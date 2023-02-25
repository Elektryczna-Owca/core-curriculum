<?php
$dbHost = getenv('DB_HOST');
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASS');

try {
    $dbh = new PDO("mysql:host=$dbHost;dbname=curriculum", $dbUser, $dbPassword);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

$stmt = $dbh->query("SELECT id, symbol FROM curriculum LIMIT 1");
$rows = $stmt->fetchAll();


$sqlUpdate = $dbh->prepare("UPDATE curriculum SET symbol_normalized = ? WHERE id = ?");

foreach ($rows as $row) {
    $id = $row['id'];
    $symbol = $row['symbol'];

    $parts = explode('.', $symbol,4);
    while (count($parts) < 4) {
        $parts[] = '';
    }
    $result = [];
    foreach ($parts as $part) {
        if (!$part) {
            $result[] = '00';
        } else if (is_numeric($part)) {
            $result[] = sprintf("%02d", $part);
        } else if (preg_match('/[a-z]/', $part)) {
            $result[] = letterToInteger($part);
        } else if (preg_match('/[IVXL]/', $part)) {
            $result[] = romanToInteger($part);
        } else {
            die("I don't recognize the symbol");
        }
    }
    $symbolNormalized = implode('.', $result) . '.';
    echo $symbol . ' -> ' . $symbolNormalized . "\n";
    $sqlUpdate->execute([$symbolNormalized, $id]);
}
//print_r($rows);

function romanToInteger($roman)
{
    $romans = array(
        'M' => 1000,
        'CM' => 900,
        'D' => 500,
        'CD' => 400,
        'C' => 100,
        'XC' => 90,
        'L' => 50,
        'XL' => 40,
        'X' => 10,
        'IX' => 9,
        'V' => 5,
        'IV' => 4,
        'I' => 1,
    );

    $result = 0;
    foreach ($romans as $key => $value) {
        while (strpos($roman, $key) === 0) {
            $result += $value;
            $roman = substr($roman, strlen($key));
        }
    }
    return sprintf("%02d", $result);
}

function letterToInteger(string $letter)
{
    $integer = ord($letter) - 96;
    return sprintf("%02d", $integer);
}