<?php
try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

$subjects = ['biologia', 'chemia', 'edb', 'fizyka', 'geografia', 'historia', 'informatyka', 'j.obcy', 'j.polski', 'matematyka', 'przyroda', 'wos'];
$subjects = ['j.obcy', 'j.polski', 'matematyka','muzyka','plastyka','przyroda','technika','wf'];
$defaultSqlParams = ['subject' => null, 'symbol' => null,
    'grade0' => 0, 'grade1' => 0, 'grade2' => 0, 'grade3' => 0, 'grade4' => 0, 'grade5' => 0, 'grade6' => 0, 'grade7' => 0, 'grade8' => 0,
    'text_level1' => null, 'text_level2' => null, 'text_level3' => null, 'text_level4' => null,
    'obligatory' => null];
$sqlTemplate = "INSERT INTO curriculum SET subject = :subject, symbol = :symbol,
                           grade0 = :grade0, grade1 = :grade1, grade2 = :grade2, grade3 = :grade3, grade4 = :grade4, grade5 = :grade5, grade6 = :grade6, grade7 = :grade7,  grade8 = :grade8,
                           text_level1 = :text_level1, text_level2 = :text_level2, text_level3 = :text_level3, text_level4 = :text_level4,
                           obligatory = :obligatory";
$preparedStatement = $dbh->prepare($sqlTemplate);

foreach ($subjects as $subject) {
    $defaultSqlParams['subject'] = $subject;
    $files = glob("sources/$subject-*.txt");
    foreach ($files as $file) {
        $defaultSqlParams['grade0'] = 0;
        $defaultSqlParams['grade1'] = 0;
        $defaultSqlParams['grade2'] = 0;
        $defaultSqlParams['grade3'] = 0;
        $defaultSqlParams['grade4'] = 0;
        $defaultSqlParams['grade5'] = 0;
        $defaultSqlParams['grade6'] = 0;
        $defaultSqlParams['grade7'] = 0;
        $defaultSqlParams['grade8'] = 0;
        $fileName = basename($file);
        $matches = null;
        $subjectEscaped = preg_quote($subject);
        if (!preg_match("/$subjectEscaped-(\d+)(-\w+)?/", $fileName, $matches)) {
            echo "Couldn't parse '$fileName', skipping the file\n";
            continue;
        }
        $grades = str_split($matches[1]);
        foreach ($grades as $grade) {
            $defaultSqlParams["grade$grade"] = 1;
        }

        $obligatory = null;
        if (isset($matches[2]) && $matches[2] == '-proponowane') {
            $defaultSqlParams['obligatory'] = 0;
        }
        echo "Processing $file\n";
        echo "Subject: $subject\n";
        echo "Grades:\n";
        print_r($grades);
        echo "Obligatory: $obligatory\n";

        $fileContent = file($file);
        $textLevel = [];
        $textLevel[1] = null;
        $textLevel[2] = null;
        $textLevel[3] = null;
        $textLevel[4] = null;
        $currentLevel = null;
        $previousLevel = 0;
        $sql = [];

        foreach ($fileContent as $line) {
            // Check current level
            if (str_starts_with($line, "\t\t\t")) {
                $currentLevel = 4;
            } elseif (str_starts_with($line, "\t\t")) {
                $currentLevel = 3;
            } elseif (str_starts_with($line, "\t")) {
                $currentLevel = 2;
            } else {
                $currentLevel = 1;
            }
            // If previous level is the same or higher, then add previous line.
            if ($previousLevel >= $currentLevel) {
                $sqlParams = $defaultSqlParams;
                $sqlParams['symbol'] = extractSymbol($textLevel);
                $sqlParams['text_level1'] = removeNumbering($textLevel[1]);
                $sqlParams['text_level2'] = removeNumbering($textLevel[2]);
                $sqlParams['text_level3'] = removeNumbering($textLevel[3]);
                $sqlParams['text_level4'] = removeNumbering($textLevel[4]);
                $preparedStatement->execute($sqlParams);
                $textLevel[$currentLevel] = trim($line);
            }

            // If previous level is higher than the current, then clear the previous sub-points.
            for ($level = $currentLevel; $level <= $previousLevel; $level++) {
                $textLevel[$level] = null;
            }
            $textLevel[$currentLevel] = trim($line);
            $previousLevel = $currentLevel;
        }
        // Add the last line
        $sqlParams = $defaultSqlParams;
        $sqlParams['symbol'] = extractSymbol($textLevel);
        $sqlParams['text_level1'] = removeNumbering($textLevel[1]);
        $sqlParams['text_level2'] = removeNumbering($textLevel[2]);
        $sqlParams['text_level3'] = removeNumbering($textLevel[3]);
        $sqlParams['text_level4'] = removeNumbering($textLevel[4]);
        $preparedStatement->execute($sqlParams);

    }
}

function extractSymbol($textLevel)
{
    $symbol = '';
    $matches = null;
    if (!preg_match('/([IXVL\d]+)\./', $textLevel[1], $matches)) {
        throw new Exception("Didn't find 1st level number.\n" . var_export($textLevel, true));
    }
    $symbol .= $matches[1] . '.';
    if (!$textLevel[2]) {
        return $symbol;
    }

    $matches = null;
    if (!preg_match('/(\d+)[.)]/', $textLevel[2], $matches)) {
        throw new Exception("Didn't find 2nd level number in string: '{$textLevel[2]}'");
    }
    $symbol .= $matches[1] . '.';

    if (!$textLevel[3]) {
        return $symbol;
    }
    $matches = null;
    if (!preg_match('/(\d+|[a-z])\)/', $textLevel[3], $matches)) {
        throw new Exception("Didn't find 3rd level number in string: '{$textLevel[3]}'");
    }
    $symbol .= $matches[1] . '.';

    if (!$textLevel[4]) {
        return $symbol;
    }
    $matches = null;
    if (!preg_match('/([a-z])\)/', $textLevel[4], $matches)) {
        throw new Exception("Didn't find 4th level number in string: '{$textLevel[4]}'");
    }
    $symbol .= $matches[1] . '.';

    return $symbol;
}

function removeNumbering($text): string
{
    return preg_replace('/[IXVa-z0-9]+(\)|\.) /', '', $text, 1);
}