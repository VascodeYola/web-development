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
  QueryString := GetEnv('QUERY_STRING');     {Считывем строку}
  {0-0}KeyParameter :=  KeyParameter + '=';  {Добавляем параметру = }
  LengthQueryString := LENGTH(QueryString); {Вычисляем длину строки}
  LengthParameter := LENGTH(KeyParameter);  {Вычисляем длину параметра}
  NumberFirstSymbolParameter := POS(KeyParameter, QueryString); {Ищем номер первого символ нужной подстроки параметра в строке}
  IF NumberFirstSymbolParameter <> 0 {Если параметр найден, то определяем значение параметра}
  THEN
    BEGIN
      QueryString := COPY(QueryString, NumberFirstSymbolParameter + LengthParameter + 1, LengthQueryString - LengthParameter);{Отделяем параметр, остаток записываем в QueryString}
      NumberFirstAmpersand := POS('&', QueryString); {Находим первый амрерсанд после найденного параметра}
        IF NumberFirstAmpersand <> 0 {Если Амперсанд найден, то}
        THEN                         {Определяем длину значения параметра относительно номера первого амресанда}
          LengthValueParameter := NumberFirstAmpersand - 1 
        ELSE                         {Если амперсанд не найден, то длина значения параметр равна длине остатка строки}
          LengthValueParameter := LENGTH(QueryString);
      ValueParameter := COPY(QueryString, 1, LengthValueParameter)
    END;
  GetQueryStringParameter := ValueParameter 
  {ELSE Если параметр не найден, возвращаем Not found}
END;   {GetQueryStringParameter}
  
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END.  {WorkWithQueryString}

{?first_name=Ivan&last_name=Ivanov&age=33}
