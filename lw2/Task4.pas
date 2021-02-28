PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;

FUNCTION GetQueryStringParameter(KeyParameter: STRING): STRING;
VAR
  QueryString, ValueParameter: STRING;
  NumberFirstSymbolParameter, NumberFirstAmpersand, NumberFirstSymbolValueParameter, LengthQueryString,
  LengthValueParameter, LengthParameter: INTEGER;
BEGIN  {GetQueryStringParameter}
  ValueParameter := 'Not found';
  QueryString := GetEnv('QUERY_STRING');     {�������� ������}
  {0-0}KeyParameter :=  KeyParameter + '=';  {��������� ��������� = }
  LengthQueryString := LENGTH(QueryString); {��������� ����� ������}
  LengthParameter := LENGTH(KeyParameter);  {��������� ����� ���������}
  NumberFirstSymbolParameter := POS(KeyParameter, QueryString); {���� ����� ������� ������ ������ ��������� ��������� � ������}
  IF NumberFirstSymbolParameter <> 0 {���� �������� ������, �� ���������� �������� ���������}
  THEN
    BEGIN
      QueryString := COPY(QueryString, NumberFirstSymbolParameter + LengthParameter + 1, LengthQueryString - LengthParameter);{�������� ��������, ������� ���������� � QueryString}
      NumberFirstAmpersand := POS('&', QueryString); {������� ������ ��������� ����� ���������� ���������}
        IF NumberFirstAmpersand <> 0 {���� ��������� ������, ��}
        THEN                         {���������� ����� �������� ��������� ������������ ������ ������� ���������}
          LengthValueParameter := NumberFirstAmpersand - 1 
        ELSE                         {���� ��������� �� ������, �� ����� �������� �������� ����� ����� ������� ������}
          LengthValueParameter := LENGTH(QueryString);
      ValueParameter := COPY(QueryString, 1, LengthValueParameter)
    END;
  GetQueryStringParameter := ValueParameter 
  {ELSE ���� �������� �� ������, ���������� Not found}
END;   {GetQueryStringParameter}
  
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END.  {WorkWithQueryString}

{?first_name=Ivan&last_name=Ivanov&age=33}
