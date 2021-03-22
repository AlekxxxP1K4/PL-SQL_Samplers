DECLARE 
   R1 RECTANGLE; 
   R2 RECTANGLE; 
   R3 RECTANGLE; 
   INC_FACTOR NUMBER := 5; 
BEGIN 
   R1 := RECTANGLE(3, 4); 
   R2 := RECTANGLE(5, 7); 
   R3 := R1.ENLARGE(INC_FACTOR); 
   R3.DISPLAY;  
   IF (R1 > R2) THEN 
      R1.DISPLAY; 
   ELSE 
      R2.DISPLAY; 
   END IF; 
END; 
/