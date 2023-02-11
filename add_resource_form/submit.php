<?php
$id = (int)($_POST['id']);
if ($id < 1 || $id > 2000) {
    exit;
}
$url = ($_POST['url']);
if (strlen($url) > 1000) {
    exit;
}
$extra = ($_POST['extra']);
if (strlen($extra) > 10000) {
    exit;
}

try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

$sql = "INSERT INTO submission (curriculum_id, url, extra) VALUES (?,?,?)";
$dbh->prepare($sql)->execute([$id, $url, $extra]);
?>

<!doctype html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dziękujemy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Dziękujemy za nadesłanie propozycji materiału.</h1>
    <span>Sprawdzimy nadesłany link i dodamy do <a href="https://edukacja-domowa.info/Obowi%C4%85zkowa_podstawa_programowa">reszty materiałów</a>.</span>
</div>
</body>
</html>