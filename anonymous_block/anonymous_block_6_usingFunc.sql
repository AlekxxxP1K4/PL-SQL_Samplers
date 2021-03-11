DECLARE
  vNumber1  NUMBER(13,2); 
  vNumber2  NUMBER(13,2); 
  vMedia    NUMBER(13,2);  
BEGIN
  vNumber1  :=  5000.8888;
  vNumber2  :=  3000.4444;
  vMedia    :=  ROUND((vNumber1 + vNumber2) / 2, 2);
  DBMS_OUTPUT.PUT_LINE('vNumber1 = ' || vNumber1); 
  DBMS_OUTPUT.PUT_LINE('vNumber2 = ' || vNumber2); 
  DBMS_OUTPUT.PUT_LINE('Media = ' || TO_CHAR(vMedia,'99G999G999D99')); 
END;


/*
DECLARE
  VNUMBER1  NUMBER(13,2); 
  VNUMBER2  NUMBER(13,2); 
  VMEDIA    NUMBER(13,2);  
BEGIN
  VNUMBER1  :=  5000.8888;
  VNUMBER2  :=  3000.4444;
  VMEDIA    :=  ROUND((VNUMBER1 + VNUMBER2) / 2, 2);
  DBMS_OUTPUT.PUT_LINE('vNumber1 = ' || VNUMBER1); 
  DBMS_OUTPUT.PUT_LINE('vNumber2 = ' || VNUMBER2); 
  DBMS_OUTPUT.PUT_LINE('Media = ' || TO_CHAR(VMEDIA,'99G999G999D99')); 
END;
*/
