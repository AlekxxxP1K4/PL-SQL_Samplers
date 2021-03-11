DECLARE
  vNumber  NUMBER(38) :=  1;
  vLimit  NUMBER(38) :=  10;
BEGIN
WHILE  vNumber <= vLimit LOOP
    DBMS_OUTPUT.PUT_LINE('Number =  ' || TO_CHAR(vNumber));
    vNumber := vNumber + 1;
END LOOP;
END;

/*
DECLARE
  VNUMBER  NUMBER(38) :=  1;
  VLIMIT  NUMBER(38) :=  10;
BEGIN
WHILE  VNUMBER <= VLIMIT LOOP
    DBMS_OUTPUT.PUT_LINE('Number =  ' || TO_CHAR(VNUMBER));
    VNUMBER := VNUMBER + 1;
END LOOP;
END;
*/