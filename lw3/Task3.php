<?php
//Password Strength
header("Content-Type: text/plain");
$strength = 0; //Изначально считаем надежность равной 0.
function getGETParameter(string $valueParameter): ?string
{
    return isset($_GET[$valueParameter]) ? (string) $_GET[$valueParameter] : null;
}	
$password = getGETParameter('password');
$len = strlen($password);
$strength = $strength + 4 * $len; //К надежности прибавляется (4*len), где len - количество всех символов пароля
$strength = $strength + 4 * preg_match_all('/[*\d]/', $password);// К надежности прибавляется +(n*4), где n - количество цифр в пароле
//К надежности прибавляется +((len-n)*2) в случае, если пароль содержит n символов в нижнем регистре  
$strength = $strength + (($len - preg_match_all('/[^A-Z0-9]/', $password)) * 2);
//К надежности прибавляется +((len-n)*2) в случае, если пароль содержит n символов в верхнем регистре  
$strength = $strength + (($len - preg_match_all('/[^a-z0-9]/', $password)) * 2);
if (ctype_digit($password))  //Если пароль состоит только из цифр вычитаем число равное количеству символов
{
    $strength -= $len;
}
if (ctype_alpha($password))  //Если пароль состоит только из букв вычитаем число равное количеству символов
{
    $strength -= $len;
}                       
// За каждый повторяющийся символ в пароле вычитается количество повторяющихся символов
foreach (count_chars($password, 1) as $i => $val)
{
    if ($val > 1)
    { 
        $strength -= $val;
    }
}
echo "Password: $password". PHP_EOL;
echo "Password Strength = $strength". PHP_EOL;