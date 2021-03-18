CREATE OR REPLACE TYPE BODY rectangle AS
  CONSTRUCTOR FUNCTION rectangle(length NUMBER, width NUMBER)
    RETURN SELF AS RESULT
  AS
  BEGIN
    SELF.length := length;
    SELF.width := width;
-- We compute the area rather than accepting it as a parameter.
    SELF.area := length * width;
    RETURN;
  END;
END;