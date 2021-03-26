<?php
//Password Strength
header("Content-Type: text/plain");
$strength = 0; //���������� ������� ���������� ������ 0.
function getGETParameter(string $valueParameter): ?string
{
    return isset($_GET[$valueParameter]) ? (string) $_GET[$valueParameter] : null;
}	
$password = getGETParameter('password');
$len = strlen($password);
$strength = $strength + 4 * $len; //� ���������� ������������ (4*len), ��� len - ���������� ���� �������� ������
$strength = $strength + 4 * preg_match_all('/[*\d]/', $password);// � ���������� ������������ +(n*4), ��� n - ���������� ���� � ������
//� ���������� ������������ +((len-n)*2) � ������, ���� ������ �������� n �������� � ������ ��������  
$strength = $strength + (($len - preg_match_all('/[^A-Z0-9]/', $password)) * 2);
//� ���������� ������������ +((len-n)*2) � ������, ���� ������ �������� n �������� � ������� ��������  
$strength = $strength + (($len - preg_match_all('/[^a-z0-9]/', $password)) * 2);
if (ctype_digit($password))  //���� ������ ������� ������ �� ���� �������� ����� ������ ���������� ��������
{
    $strength -= $len;
}
if (ctype_alpha($password))  //���� ������ ������� ������ �� ���� �������� ����� ������ ���������� ��������
{
    $strength -= $len;
}                       
// �� ������ ������������� ������ � ������ ���������� ���������� ������������� ��������
foreach (count_chars($password, 1) as $i => $val)
{
    if ($val > 1)
    { 
        $strength -= $val;
    }
}
echo "Password: $password". PHP_EOL;
echo "Password Strength = $strength". PHP_EOL;