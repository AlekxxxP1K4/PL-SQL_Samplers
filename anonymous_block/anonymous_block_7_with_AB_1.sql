<<BLOCK1>>
DECLARE
  vBlock1 VARCHAR2(20) := 'Block 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || block1.vBlock1);
  <<BLOCK2>>
  DECLARE
    vBlock2 VARCHAR2(20) := 'Bloco 2';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || block1.vBlock1);
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 2: ' || block2.vBlock2);
  END;
  DBMS_OUTPUT.PUT_LINE('v Block 1: ' || block1.vBlock1);
  
END;

/*
<<BLOCK1>>
DECLARE
  VBLOCK1 VARCHAR2(20) := 'Block 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || block1.VBLOCK1);
  <<BLOCK2>>
  DECLARE
    VBLOCK2 VARCHAR2(20) := 'Bloco 2';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 1: ' || block1.VBLOCK1);
    DBMS_OUTPUT.PUT_LINE('Ref var from Block 2: ' || block2.VBLOCK2);
  END;
  DBMS_OUTPUT.PUT_LINE('v Block 1: ' || block1.VBLOCK1);
  
END;
*/