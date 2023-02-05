<?php

$endPoint = "https://edukacja-domowa.info/api.php";
$lgname = 'Tomek@ed';
$lgpassword = "";
//$login_Token = getLoginToken(); // Step 1
//loginRequest($login_Token); // Step 2
$csrfToken = getCSRFToken(); // Step 3

try {
    $dbh = new PDO('mysql:host=localhost;dbname=curriculum', 'root', 'a');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}


class Subject
{
    public readonly string $wikiTitle;

    public function __construct(public readonly string $name, public readonly array $grades)
    {
        $this->wikiTitle = "Podstawa_programowa_$name";
    }
}

$subject = new Subject('matematyka', [4, 5, 6, 7, 8]);
$subjects = [];
$subjects[] = $subject;

// All entries for given subject and grade.
foreach ($subjects as $subject) {
    foreach ($subject->grades as $grade) {
        $pageText = '';
        $pageTitle = $subject->wikiTitle . "_klasa_$grade";
        $gradeCondition = "grade" . $grade . " = 1";
        $stmt = $dbh->query("SELECT symbol, text_level1, text_level2, text_level3, text_level4 FROM curriculum WHERE $gradeCondition AND subject = '{$subject->name}'");
        $pageText .= "= " . $pageTitle . " =\n";
        $textLevel1 = '';
        while ($row = $stmt->fetch()) {
            if ($row['text_level1'] != $textLevel1) {
                $pageText .= '== ' . str_replace(' Uczeń:', '', $row['text_level1']) . " ==\n";
                $textLevel1 = $row['text_level1'];
            }

            $pageText .= $row['symbol'] . ' ' . $row['text_level1'] . ' ' . $row['text_level2'] . ' ' . $row['text_level3'] . ' ' . $row['text_level4'] . "\n\n";
        }
        editRequest($pageTitle, $pageText);
    }
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

    echo($output);
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

    echo($output);
}