DECLARE
  vBlock1 VARCHAR2(20) := 'Block 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || vBlock1);
  DECLARE
    vBlock2 VARCHAR2(20) := 'Block 2';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || vBlock1);
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 2: ' || vBlock2);
  END;
  DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || vBlock1);
  
END;

/*
DECLARE
  VBLOCK1 VARCHAR2(20) := 'Block 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || VBLOCK1);
  DECLARE
    VBLOCK2 VARCHAR2(20) := 'Block 2';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || VBLOCK1);
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 2: ' || VBLOCK2);
  END;
  DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || VBLOCK1);
  
END;
*/