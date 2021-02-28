PROGRAM Name(INPUT, OUTPUT);
USES
  DOS;
VAR 
  QueryString, KeyParameter, ValueParameter: STRING;
  NumberFirstSymbolParameter, NumberFirstSymbolValueParameter, LengthQueryString,
  LengthValueParameter, LengthParameter: INTEGER;
BEGIN {Name}
  KeyParameter := ('name=');
  QueryString := GetEnv('QUERY_STRING');
  LengthQueryString := LENGTH(QueryString);
  LengthParameter := LENGTH(KeyParameter);
  LengthValueParameter := LengthQueryString - LengthParameter;
  NumberFirstSymbolParameter := POS(KeyParameter, QueryString);
  NumberFirstSymbolValueParameter := NumberFirstSymbolParameter + LengthParameter;
  ValueParameter := COPY(QueryString, NumberFirstSymbolValueParameter, LengthValueParameter);
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF LengthValueParameter = 0
  THEN
    WRITELN('Hello Anonymus!')
  ELSE
    WRITELN('Hello dear, ', ValueParameter, '!')
END. {Name}



