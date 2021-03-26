<?php
//Check Identifier
header("Content-Type: text/plain");
$parameter = 'identifier';
function getGETParameter(string $valueParameter): ?string
{
    return isset($_GET[$valueParameter]) ? (string) $_GET[$valueParameter] : null;
}
$identifier = getGETParameter($parameter);
if ($identifier === null)  //Если идентификатор не найден в строке
{
    echo "Parameter $parameter not found";
}
else                              
{
    if (preg_match("/^[a-zA-Z][a-zA-Z0-9]*$/", $identifier)) //проверяем соответствие идентификатора правилу SR3
    {
        echo "YES! $identifier its an $parameter.";
    }
    else 
    {                                                                                
        echo "NO! $identifier it isn't an $parameter, because it starts with a number.";
    }
}