PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR 
  QueryString, CodeSea, CodeLand: STRING;
BEGIN {SarahRevere}
  CodeLand := ('lanterns=1');
  CodeSea := ('lanterns=2'); 
  QueryString := GetEnv('QUERY_STRING');
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF QueryString = CodeLand
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF QueryString = CodeSea
    THEN
      WRITELN('The British are coming by sea.')
    ELSE  
      WRITELN('Sarah didn''t say.')
END. {SarahRevere}
