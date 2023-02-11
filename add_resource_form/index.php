<?php
try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
$id = (int)($_GET['id']);
if ($id < 1 || $id > 2000) {
    exit;
}
$stmt = $dbh->query("SELECT * FROM curriculum WHERE id=$id ");
$row = $stmt->fetch();
if (!$row) {
    exit;
}
$subject = $row['subject'];
$symbol = $row['symbol'];
$text1 = $row['text_level1'];
$text2 = $row['text_level2'];
$text3 = $row['text_level3'];
$text4 = $row['text_level4'];
$grades = [];
foreach ([0, 1, 2, 3, 4, 5, 6, 7, 8] as $g) {
    if ($row["grade$g"]) {
        $grades[] = $g;
    }
}
?>
<!doctype html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dodaj materiał do podstawy programowej <?php echo $symbol ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Dodaj link - <?php echo "$subject $symbol" ?></h1>

    <form action="submit.php" method="post">

        <div class="input-group">
            Przedmiot: <?php echo $subject ?> <br/>
            Klasy: <?php echo implode(",", $grades) ?> <br/>
            <?php echo $text1 ?> <br/>
            <?php echo $text2 ?> <br/>
            <?php
            if ($text3) {
                echo "$text3 <br/>";
            }
            if ($text4) {
                echo "$text4 <br/>";
            }
            ?>
        </div>
        <br/>

        <input type="hidden" value="<?php echo $id ?>" name="id">
        <!--        <label for="form-www" class="form-label">Link (URL)</label>-->
        <div class="input-group">
            <span class="input-group-text">Link (URL)</span>
            <input type="input" class="form-control" id="form-www" name="url" aria-describedby="basic-addon3">
        </div>
        <br/>

        <label for="form-extra" class="form-label">Opcjonalnie dodatkowe pomocne informacje: licencja,
            opis, czy materiał może być wykorzystany przy innych punktach podstawy, ...).
            Zostaw swój adres email, jeżeli chcesz żebyśmy się z Tobą skontaktowali.
        </label>
        <div class="input-group">
            <span class="input-group-text">Dodatkowe informacje</span>
            <textarea name="extra" id="form-extra" class="form-control"
                      aria-label="Dodatkowe informacje"></textarea>
        </div>
        <br/>

        <div>
            <input type="submit" value="Wyślij">
        </div>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>
</html>