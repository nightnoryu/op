PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN; 
 
BEGIN {SarahRevere}   
  {�������������}
  W1 := ' ';     
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      {�������� ����}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      Looking := W4 <> '#';
      {�������� ���� �� land}        
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd'); 
      {�������� ���� �� sea}
      Sea := (W1 = 's') AND (W2 = 'e') AND (W3 = 'a')
    END;
  WRITELN('Land: ', Land, '; Sea: ', Sea);
  {�������� ��������� Sarah}
END. {SarahRevere} 
