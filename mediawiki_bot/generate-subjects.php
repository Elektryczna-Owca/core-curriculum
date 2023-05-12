<?php
$dbHost = getenv('DB_HOST');
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASS');
$endPoint = "https://edukacja-domowa.wiki/api.php";
$lgname = 'Tomek@ed';
$lgpassword = getenv('PWD');

if (!file_exists('cookie.txt')) {
    $login_Token = getLoginToken();
    loginRequest($login_Token);
}
$csrfToken = getCSRFToken();

try {
    $dbh = new PDO("mysql:host=$dbHost;dbname=curriculum", $dbUser, $dbPassword);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "\n";
    print("$dbHost\n");
    die();
}

$subjects = [];
$physics78 = new Subject('fizyka', [7, 8]);
$physics78->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 2 lat, w klasach 7 - 8.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_fizyka_klasa_7|fizyka klasa 7]] oraz [[Podstawa_programowa_fizyka_klasa_8|fizyka klasa 8]].';
$subjects[] = $physics78;

$biology56 = new Subject('biologia', [5, 6]);
$biology56->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 2 lat, w klasach 5 - 6.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_biologia_klasa_5|biologia klasa 5]] oraz [[Podstawa_programowa_biologia_klasa_6|biologia klasa 6]].';
$subjects[] = $biology56;
$subjects[] = new Subject('biologia', [7]);
$subjects[] = new Subject('biologia', [8]);

$chemistry78 = new Subject('chemia', [7, 8]);
$chemistry78->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 2 lat, w klasach 7 - 8.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_chemia_klasa_7|chemia klasa 7]] oraz [[Podstawa_programowa_chemia_klasa_8|chemia klasa 8]].';
$subjects[] = $chemistry78;

$subjects[] = new Subject('edb', [8]);
$subjects[] = new Subject('historia', [4, 5, 6, 7, 8]);
$subjects[] = new Subject('geografia', [5]);
$subjects[] = new Subject('geografia', [6]);
$subjects[] = new Subject('geografia', [7]);
$subjects[] = new Subject('geografia', [8]);

$subjects[] = new Subject('przyroda', [4]);
$subjects[] = new Subject('wos', [8]);
$es123 = new Subject('edukacja_społeczna', [1, 2, 3]);
$es123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_edukacja_społeczna_klasa_1|edukacji społecznej klasa 1]],
[[Podstawa_programowa_edukacja_społeczna_klasa_2|edukacji społecznej klasa 2]] oraz [[Podstawa_programowa_edukacja_społeczna_klasa_3|edukacji społecznej klasa 3]].';
$subjects[] = $es123;

$ethics123 = new Subject('etyka', [1, 2, 3]);
$ethics123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_etyka_klasa_1|etyka klasa 1]],
[[Podstawa_programowa_etyka_klasa_2|etyka klasa 2]] oraz [[Podstawa_programowa_etyka_klasa_3|etyka klasa 3]].';
$subjects[] = $ethics123;

$it123 = new Subject('informatyka', [1, 2, 3]);
$it123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_informatyka_klasa_1|informatyka klasa 1]],
[[Podstawa_programowa_informatyka_klasa_2|informatyka klasa 2]] oraz [[Podstawa_programowa_informatyka_klasa_3|informatyka klasa 3]].';
$subjects[] = $it123;

$it456 = new Subject('informatyka', [4, 5, 6]);
$it456->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 4 - 6.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_informatyka_klasa_4|informatyka klasa 4]],
[[Podstawa_programowa_informatyka_klasa_5|informatyka klasa 5]] oraz [[Podstawa_programowa_informatyka_klasa_6|informatyka klasa 6]].';
$subjects[] = $it456;

$it78 = new Subject('informatyka', [7, 8]);
$it78->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 2 lat, w klasach 7 - 8.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_informatyka_klasa_7|informatyka klasa 7]],
oraz [[Podstawa_programowa_informatyka_klasa_8|informatyka klasa 8]].';
$subjects[] = $it78;

$polish123 = new Subject('j.polski', [1, 2, 3]);
$polish123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_język_polski_klasa_1|język polski klasa 1]],
[[Podstawa_programowa_język_polski_klasa_2|język polski klasa 2]] oraz [[Podstawa_programowa_język_polski_klasa_3|język polski klasa 3]].';
$subjects[] = $polish123;

$polish456 = new Subject('j.polski', [4, 5, 6]);
$polish456->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 4 - 6.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_język_polski_klasa_4|język polski klasa 4]],
[[Podstawa_programowa_język_polski_klasa_5|język polski klasa 5]] oraz [[Podstawa_programowa_język_polski_klasa_6|język polski klasa 6]].';
$subjects[] = $polish456;

$polish78 = new Subject('j.polski', [7, 8]);
$polish78->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 2 lat, w klasach 7 - 8.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_język_polski_klasa_7|język polski klasa 7]],
oraz [[Podstawa_programowa_język_polski_klasa_8|język polski klasa 8]].';
$subjects[] = $polish78;

$math123 = new Subject('matematyka', [1, 2, 3]);
$math123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_matematyka_klasa_1|matematyka klasa 1]],
[[Podstawa_programowa_matematyka_klasa_2|matematyka klasa 2]] oraz [[Podstawa_programowa_matematyka_klasa_3|matematyka klasa 3]].';
$subjects[] = $math123;

$math456 = new Subject('matematyka', [4, 5, 6]);
$math456->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 4 - 6.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_matematyka_klasa_4|matematyka klasa 4]],
[[Podstawa_programowa_matematyka_klasa_5|matematyka klasa 5]] oraz [[Podstawa_programowa_matematyka_klasa_6|matematyka klasa 6]].';
$subjects[] = $math456;

$math78 = new Subject('matematyka', [7, 8]);
$math78->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 2 lat, w klasach 7 - 8.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_matematyka_klasa_7|matematyka klasa 7]],
oraz [[Podstawa_programowa_matematyka_klasa_8|matematyka klasa 8]].';
$subjects[] = $math78;

$music123 = new Subject('muzyka', [1, 2, 3]);
$music123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_muzyka_klasa_1|muzyka klasa 1]],
[[Podstawa_programowa_muzyka_klasa_2|muzyka klasa 2]] oraz [[Podstawa_programowa_muzyka_klasa_3|muzyka klasa 3]].';
$subjects[] = $music123;

$art123 = new Subject('plastyka', [1, 2, 3]);
$art123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_plastyka_klasa_1|plastyka klasa 1]],
[[Podstawa_programowa_plastyka_klasa_2|plastyka klasa 2]] oraz [[Podstawa_programowa_plastyka_klasa_3|plastyka klasa 3]].';
$subjects[] = $art123;

$nature123 = new Subject('przyroda', [1, 2, 3]);
$nature123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_przyroda_klasa_1|przyroda klasa 1]],
[[Podstawa_programowa_przyroda_klasa_2|przyroda klasa 2]] oraz [[Podstawa_programowa_przyroda_klasa_3|przyroda klasa 3]].';
$subjects[] = $nature123;

$technology123 = new Subject('technika', [1, 2, 3]);
$technology123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_technika_klasa_1|technika klasa 1]],
[[Podstawa_programowa_technika_klasa_2|technika klasa 2]] oraz [[Podstawa_programowa_technika_klasa_3|technika klasa 3]].';
$subjects[] = $technology123;

$pe123 = new Subject('wf', [1, 2, 3]);
$pe123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_wf_klasa_1|wf klasa 1]],
[[Podstawa_programowa_wf_klasa_2|wf klasa 2]] oraz [[Podstawa_programowa_wf_klasa_3|wf klasa 3]].';
$subjects[] = $pe123;

$foreignLang123 = new Subject('j.obcy', [1, 2, 3]);
$foreignLang123->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 3 lat, w klasach 1 - 3.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_język_obcy_klasa_1|język obcy klasa 1]],
[[Podstawa_programowa_język_obcy_klasa_2|język obcy klasa 2]] oraz [[Podstawa_programowa_język_obcy_klasa_3|język obcy klasa 3]].';
$subjects[] = $foreignLang123;

$foreignLang45678 = new Subject('j.obcy', [4, 5, 6, 7, 8]);
$foreignLang45678->wikiIntroduction =
    'Uwaga - wszystkie punkty zawarte na tej stronie muszą być spełnione w przeciągu 5 lat, w klasach 4 - 8.

Materiały zamieszczone tutaj są identyczne dla [[Podstawa_programowa_język_obcy_klasa_4|język obcy klasa 4]],
[[Podstawa_programowa_język_obcy_klasa_5|język obcy klasa 5]],
[[Podstawa_programowa_język_obcy_klasa_6|język obcy klasa 6]],
[[Podstawa_programowa_język_obcy_klasa_7|język obcy klasa 7]],
oraz [[Podstawa_programowa_język_obcy_klasa_8|język obcy klasa 8]].';
$subjects[] = $foreignLang45678;

//$subjects = [$math78];

// All entries for given subject and grade.
foreach ($subjects as $subject) {
    foreach ($subject->grades as $grade) {
//        echo "$subject->name grade $grade\n";
        $pageText = '';
        $pageTitle = $subject->wikiTitle . "_klasa_$grade";
        $gradeCondition = "grade" . $grade . " = 1";
        $stmt = $dbh->query("SELECT id, symbol, text_level1, text_level2, text_level3, text_level4 FROM curriculum WHERE $gradeCondition AND subject = '{$subject->name}' ORDER BY symbol_normalized ASC");
        $pageText .= "= " . str_replace('_', ' ', $pageTitle) . " =\n";
        if (isset($subject->wikiIntroduction)) {
            $pageText .= $subject->wikiIntroduction . "\n";
        }
        $rows = $stmt->fetchAll();
        $pageText .= generateNonIndentPage($rows);
        // Add images
        $pageText = preg_replace('|<file>([^<>]+)</file>|', '[[File:$1]]', $pageText);
        // <file>szkoła-podstawowa-matematyka-16-23.png</file>

//        echo $pageText;
        editRequest($pageTitle, $pageText);
    }
}

function getResources($id)
{
    global $dbh;

    $sql = "SELECT r.* FROM curriculum_has_resource c JOIN resource r ON c.resource_id = r.id WHERE c.curriculum_id = $id";
    $result = $dbh->query($sql);
    $resources = $result->fetchAll();

    return $resources;
}

function generateNonIndentPage($rows)
{
    $pageText = '';

    foreach ($rows as $row) {
        // Detect which level is the last one. Levels above should have headings if not created already.
        // The last level is an entry.
//        print_r($row);
        $id = $row['id'];
        $pageText .= outputHeadings($row);
        $pageText .= outputLastLevel($row);
        // Add linked resources
        $resources = getResources($id);
//        var_dump($resources);
        foreach ($resources as $resource) {
            $pageText .= ":* " . '[' . $resource['url'] . ' ' . trim($resource['comment']) . "]\n";
        }
        $pageText .= ":* [https://edukacja-domowa.wiki/form/dodaj-material/index.php?id=$id Zaproponuj materiał]\n\n";
    }

    return $pageText;
}

function outputHeadings($row)
{
    static $level1 = '';
    static $level2 = '';
    static $level3 = '';

    $depth = 4;
    if (!$row['text_level4']) {
        $depth = 3;
    }
    if (!$row['text_level3']) {
        $depth = 2;
    }
    if (!$row['text_level2']) {
        $depth = 1;
    }

    $heading = '';
    $symbol = $row['symbol'];
    $symbolParts = explode('.', $symbol);

    if ($row['text_level1'] != $level1) {
//        $heading .= '== ' . $symbol . ' ' .  . " ==\n";
        $currentHeader = $row['text_level1'];
        $replaced = studentTextReplace('==', $currentHeader);
        if (!$replaced) {
            $currentHeader .= " ==\n";
        }

        $heading .= '== ' . $symbolParts[0] . ' ' . $currentHeader;
        $level1 = $row['text_level1'];
        $level2 = '';
    }

    if ($depth == 3 && $row['text_level2'] != $level2) {
        $currentHeader = $row['text_level2'];
        $replaced = studentTextReplace('===', $currentHeader);
        if (!$replaced) {
            $currentHeader .= " ===\n";
        }
        $heading .= '=== ' . $symbolParts[0] . '.' . $symbolParts[1] . ' ' . $currentHeader;
        $level2 = $row['text_level2'];
        $level3 = '';
    }

    if ($depth == 4 && $row['text_level3'] != $level3) {
        $currentHeader = $row['text_level3'];
        $replaced = studentTextReplace('====', $currentHeader);
        if (!$replaced) {
            $currentHeader .= " ====\n";
        }
        $heading .= '==== ' . $symbolParts[0] . '.' . $symbolParts[1] . '.' . $symbolParts[2] . ' ' . $currentHeader;
        $level3 = $row['text_level3'];
    }

    return $heading;
}

function studentTextReplace($section, &$header): bool
{
    $count = null;
    $replaced = false;
    $header = str_replace(' Uczeń:', "$section\n'''Uczeń:'''\n\n", $header, $count);
    if ($count) {
        $replaced = true;
    }
    $header = str_replace(' – uczeń:', "$section\n'''uczeń:'''\n\n", $header, $count);
    if ($count) {
        $replaced = true;
    }

    return $replaced;
}

function outputLastLevel($row)
{
    $depth = 4;
    if (!$row['text_level4']) {
        $depth = 3;
    }
    if (!$row['text_level3']) {
        $depth = 2;
    }
    if (!$row['text_level2']) {
        $depth = 1;
    }

    return $row['symbol'] . ' ' . $row['text_level' . $depth] . "\n\n";
}

// Step 1: GET Request to fetch login token
function getLoginToken()
{
    global $endPoint;

    $params1 = [
        "action" => "query",
        "meta" => "tokens",
        "type" => "login",
        "format" => "json"
    ];

    $url = $endPoint . "?" . http_build_query($params1);

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt");
    curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt");

    $output = curl_exec($ch);
    curl_close($ch);

    $result = json_decode($output, true);
    return $result["query"]["tokens"]["logintoken"];
}

// Step 2: POST Request to log in. Use of main account for login is not
// supported. Obtain credentials via Special:BotPasswords
// (https://www.mediawiki.org/wiki/Special:BotPasswords) for lgname & lgpassword
function loginRequest($logintoken)
{
    global $endPoint;
    global $lgname;
    global $lgpassword;

    $params2 = [
        "action" => "login",
        "lgname" => $lgname,
        "lgpassword" => $lgpassword,
        "lgtoken" => $logintoken,
        "format" => "json"
    ];

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $endPoint);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params2));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt");
    curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt");

    $output = curl_exec($ch);
    curl_close($ch);

//    echo($output);
}

// Step 3: GET Request to fetch CSRF token
function getCSRFToken()
{
    global $endPoint;

    $params3 = [
        "action" => "query",
        "meta" => "tokens",
        "format" => "json"
    ];

    $url = $endPoint . "?" . http_build_query($params3);

    $ch = curl_init($url);

    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt");
    curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt");

    $output = curl_exec($ch);
    curl_close($ch);

    $result = json_decode($output, true);
    return $result["query"]["tokens"]["csrftoken"];
}

// Step 4: POST request to edit a page
function editRequest($title, $text)
{
    global $endPoint;
    global $csrfToken;

//    echo $title . "\n"; echo $text; return;
    $params4 = [
        "action" => "edit",
        "title" => $title,
        "text" => $text,
        "token" => $csrfToken,
        "format" => "json",
        "bot" => true,
    ];

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $endPoint);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params4));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt");
    curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt");

    $output = curl_exec($ch);
    curl_close($ch);

    echo $output . "\n" ;
}

class Subject
{
    public readonly string $wikiTitle;
    public readonly string $wikiName;

    public string $wikiIntroduction;

    public function __construct(public readonly string $name, public readonly array $grades)
    {
        if ($name == 'edb') {
            $this->wikiName = "edukacja_dla_bezpieczeństwa";
        } else if ($name == 'j.obcy') {
            $this->wikiName = "język_obcy";
        } else if ($name == 'j.polski') {
            $this->wikiName = "język_polski";
        } else if ($name == 'wos') {
            $this->wikiName = "wiedza_o_społeczeństwie";
        } else {
            $this->wikiName = $name;
        }
        $this->wikiTitle = "Podstawa_programowa_" . $this->wikiName;
    }
}
