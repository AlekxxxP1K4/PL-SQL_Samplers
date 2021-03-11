DECLARE
  vNumber  NUMBER(38) := 1;
  vLimit  NUMBER(38) := 10;
BEGIN
LOOP 
  DBMS_OUTPUT.PUT_LINE('Number = ' || to_char(vNumber));
  EXIT WHEN vNumber = vLimit;
  vNumber := vNumber + 1;
END LOOP;
END;

/*
DECLARE
  VNUMBER  NUMBER(38) := 1;
  VLIMIT   NUMBER(38) := 10;
BEGIN
LOOP 
  DBMS_OUTPUT.PUT_LINE('Number = ' || TO_CHAR(VNUMBER));
  EXIT WHEN VNUMBER = VLIMIT;
  VNUMBER := VNUMBER + 1;
END LOOP;
END;
*/