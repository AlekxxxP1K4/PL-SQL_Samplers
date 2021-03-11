
DECLARE
  vStart  INTEGER(3) := 1;
  vEnd     NUMBER(38) := 10;
BEGIN
FOR i IN vStart..vEnd  LOOP
  DBMS_OUTPUT.PUT_LINE('Number = ' || to_char(i) );
END LOOP;
END;

/*
DECLARE
  VSTART  INTEGER(3) := 1;
  VEND     NUMBER(38) := 10;
BEGIN
FOR I IN VSTART..VEND  LOOP
  DBMS_OUTPUT.PUT_LINE('Number = ' || TO_CHAR(I) );
END LOOP;
END;
*/