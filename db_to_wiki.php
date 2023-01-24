<?php

try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

$subjects = ['biologia'];
// All entries for given subject and grade.
foreach ($subjects as $subject) {
    $stmt = $dbh->query("SELECT symbol, text_level1, text_level2, text_level3, text_level4 FROM curriculum WHERE grade5 = 1 AND subject = '$subject'");
    echo "= " . ucfirst($subject) . " =\n";
    $textLevel1 = '';
    while ($row = $stmt->fetch()) {
        if ($row['text_level1']  != $textLevel1) {
            echo '== ' . str_replace(' Uczeń:', '', $row['text_level1']) . " ==\n";
            $textLevel1 = $row['text_level1'];
        }

        echo $row['symbol'] . ' ' . $row['text_level1'] . ' ' . $row['text_level2'] . ' ' . $row['text_level3'] . ' ' . $row['text_level4'] . "\n\n";
    }
}
