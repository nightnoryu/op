PROGRAM PaulRevere(INPUT, OUTPUT);
{����� ᮮ⢥�����饣� ᮮ�饭��, ������饣� �� ����稭�
 �� �室�:  '...by land'  ��� 1;  '...by sea'  ��� 2;
 ���� ����� ᮮ�饭�� �� �訡��}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns = 'L'
  THEN
    BEGIN
      {Read the second L}
      READ(Lanterns);
      IF Lanterns = 'L'
      THEN
        {LL message}
        WRITELN('The British are coming by sea.')
      ELSE
        {L message}
        WRITELN('The British are coming by land.')
    END
  ELSE
    WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}
