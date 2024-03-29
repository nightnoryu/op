PROGRAM LexicoTest(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Result: CHAR;

PROCEDURE Copy(VAR Source, Destination: TEXT);
{�������� ������ �� Source � Destination}
VAR
  Ch: CHAR;
BEGIN {Copy}
  WHILE NOT EOLN(Source)
  DO
    BEGIN
      READ(Source, Ch);
      WRITE(Destination, Ch)
    END;
  WRITELN(Destination);
  READLN(Source)
END; {Copy}

PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 ���� ������������������ ������� F1 =, <, > ��� F2
��������������. ����������� ���������, ��������������� F1 � F2,
������ ���� ����������}
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {Ch1 < Ch2 ��� F1 ������ F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {Ch1 > Ch2 ��� F2 ������ F1}
          Result := '2'
    END; {WHILE}
  {���� ���� �� ����� �����������, ��� ������}
  IF (EOLN(F1)) AND (NOT EOLN(F2)) AND (Result = '0')
  THEN
    Result := '1';
  If (NOT EOLN(F1)) AND (EOLN(F2)) AND (Result = '0')
  THEN
    Result := '2'
END; {Lexico}

BEGIN {LexicoTest}
  REWRITE(F1);
  REWRITE(F2);
  Copy(INPUT, F1);
  Copy(INPUT, F2);

  Lexico(F1, F2, Result);
  WRITELN(OUTPUT, Result)
END. {LexicoTest}
