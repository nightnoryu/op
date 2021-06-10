PROGRAM RCopyTest(INPUT, OUTPUT);
PROCEDURE RCopy(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch);
      RCopy(F1, F2)
    END
END; {RCopy}
BEGIN {RCopyTest}
  RCopy(INPUT, OUTPUT);
  WRITELN(OUTPUT)
END. {RCopyTest}
