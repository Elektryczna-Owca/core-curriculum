<?php
try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
$subject = 'biologia';
$file = 'BIO-SP46.txt';
$file = 'BIO-SP78.txt';

$sql = "SELECT id FROM curriculum WHERE subject = ? AND symbol = ?";

$preparedStatement = $dbh->prepare($sql);

$resources = file($file);
foreach ($resources as $resource) {
    $resource = trim($resource);
    $split = explode(' ', $resource);
    $url = $split[0];
    $resourceId = insert($url, "pistacja.tv (wideo)");
    array_shift($split);
    foreach ($split as $symbol) {
        $symbol .= '.';
        echo "$symbol\n";
        $result = $preparedStatement->execute([$subject, $symbol]);
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
    // @TODO - check if URL already exists, do not add duplicate
    global $dbh;

    $prepared = $dbh->prepare("INSERT INTO resource VALUES (NULL, ?, ?)");
    $prepared->execute([$url, $comment]);
    return $dbh->lastInsertId();
}