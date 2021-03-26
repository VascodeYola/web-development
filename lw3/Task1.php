<?php
header("Content-Type: text/plain");
function getGETParameter(string $valueParameter): ?string
{
   return isset($_GET[$valueParameter]) ? (string) $_GET[$valueParameter] : null;
}
$text = getGETParameter('text');
echo "Text before Remove Extra Blanks: $text". PHP_EOL;
$text = str_replace("	", " ", $text);
while (strpos($text, "  ") !== false)
{
   $text = str_replace("  ", " ", $text);
}
$text = ltrim($text, " ");
$text = rtrim($text, " ");
echo "Text after Remove Extra Blanks: $text";