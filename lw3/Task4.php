<?php
//Survey Saver
header("Content-Type: text/plain");
function getGETParameter(string $valueParameter): ?string
{
    return isset($_GET[$valueParameter]) ? (string) $_GET[$valueParameter] : null;
}
$first_name = getGETParameter('first_name');
$last_name = getGETParameter('last_name');
$email = getGETParameter('email');
$age = getGETParameter('age');
$file = $email . '.txt';
$dir = '/Institute_PS/1  kurs/WEB/lw3/Data';
//mkdir($dir, 0700);
file_put_contents("$dir/$file", "First name: $first_name" . PHP_EOL 
   . "Last name: $last_name" . PHP_EOL . "Email: $email" . PHP_EOL . "Age: $age" . PHP_EOL);