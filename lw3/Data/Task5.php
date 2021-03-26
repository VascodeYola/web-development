<?php
//Survey Info
header("Content-Type: text/plain");
function getGETParameter(string $valueParameter): ?string
{
    return isset($_GET[$valueParameter]) ? (string) $_GET[$valueParameter] : null;
}
$email = getGETParameter('email');
$email = $email . '.txt';
$surveyInfo = file($email);
foreach ($surveyInfo as $key => $value)
{
    echo $value;
}