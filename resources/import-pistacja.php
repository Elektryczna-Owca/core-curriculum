<?php
try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
$subject = 'matematyka';
//$subject = 'fizyka';
//$file = 'BIO-SP46.txt';
//$file = 'BIO-SP78.txt';
//$file = 'CHM-SP78.txt';
//$file = 'FIZ-SP78.txt';
$file = 'MAT-SP46.txt';
//$file = 'MAT-SP78.txt';
$grade7 = 0;

$sql = "SELECT id FROM curriculum WHERE subject = ? AND symbol = ? AND grade7 = ?";
$preparedStatement = $dbh->prepare($sql);

$resources = file($file);
foreach ($resources as $resource) {
    $resource = trim($resource);
    $split = explode(' ', $resource);
    $url = $split[0];
    $resourceId = insert($url, "pistacja.tv (wideo)");
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
        $dbh->exec("INSERT INTO curriculum_has_resource VALUES ($curriculumId, $resourceId)");
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
        echo "URL: $url already added to the DB, skipping\n";
        return false;
    }

    $prepared = $dbh->prepare("INSERT INTO resource VALUES (NULL, ?, ?)");
    $prepared->execute([$url, $comment]);
    return $dbh->lastInsertId();
}