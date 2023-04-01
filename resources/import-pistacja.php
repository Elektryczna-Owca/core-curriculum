<?php
$dbHost = getenv('DB_HOST');
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASS');

try {
    $dbh = new PDO("mysql:host=$dbHost;dbname=curriculum", $dbUser, $dbPassword);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "\n";
    print("$dbHost\n");
    die();
}

$subject = 'geografia';
//$file = 'MAT-SP46.txt';
//$grade7 = 0;
$file = 'Michal-GEO-SP8.txt';
$grade7 = 1;

//$subject = 'fizyka';
//$file = 'FIZ-SP78.txt';
//$grade7 = 1;

//$subject = 'biologia';
//$file = 'BIO-SP46.txt';
//$grade7 = 0;
//$file = 'BIO-SP78.txt';
//$grade8 = 1;

//$subject = 'chemia';
//$file = 'CHM-SP78.txt';
//$grade7 = 1;


$sql = "SELECT id FROM curriculum WHERE subject = ? AND symbol = ? AND grade8 = ?";
$preparedStatement = $dbh->prepare($sql);

$resources = file($file);
foreach ($resources as $resource) {
    $resource = trim($resource);
    $split = explode(' ', $resource);
    $url = $split[0];
    $resourceId = insert($url, "Michał Barański (podcast)");
    if($resourceId === false) {
        continue;
    }
    array_shift($split);
    foreach ($split as $symbol) {
        $symbol .= '.';
        echo "$symbol\n";
        $result = $preparedStatement->execute([$subject, $symbol, $grade7]);
        $id = $preparedStatement->fetchAll();
        if (count($id) != 1) {
            var_dump($id);
            die('Something wrong with symbol ' . $symbol);
        }
        $curriculumId = $id[0]['id'];
        $dbh->exec("INSERT IGNORE INTO curriculum_has_resource VALUES ($curriculumId, $resourceId)");
//        var_dump($result);
//        var_dump($id);
    }
}

// https://pistacja.tv/film/bio00087-owady II.7.6.a II.7.6.b II.7.6.c

function insert($url, $comment) {

    global $dbh;

    //Check if URL already exists, do not add duplicate.
    $sql = "SELECT id FROM resource WHERE url = ?";
    $prepared = $dbh->prepare($sql);
    $prepared->execute([$url]);
    $id = $prepared->fetchAll();
    if (count($id) > 0) {
        echo "URL: $url already added to the DB, return id\n";
        return $id[0]['id'];
    }

    $prepared = $dbh->prepare("INSERT INTO resource VALUES (NULL, 3, ?, ?)");
    $prepared->execute([$url, $comment]);
    return $dbh->lastInsertId();
}