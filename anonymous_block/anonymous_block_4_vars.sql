DECLARE
  vNumber              NUMBER(11,2) := 1200.50;
  vCharFix             CHAR(100) := 'TEXT 32767 bytes';
  vCharVar             VARCHAR2(100) := 'TEXT 32767 bytes';
  vBool                BOOLEAN := TRUE;
  vData                DATE := sysdate;
  vLong                LONG := 'TEXT 32760 bytes';
  vRowid               ROWID;
  vTimestamp           TIMESTAMP := systimestamp;
  vTimestampTZ         TIMESTAMP WITH TIME ZONE := systimestamp;
  vUniCharFix          NCHAR(100) := 'TEXT 32767 bytes';
  vUniCharVar          NVARCHAR2(100) := 'TEXT 32767 bytes';
  vNumberInt           BINARY_INTEGER := 1200;
  vNumberFloat         BINARY_FLOAT := 15000000;
  vNumebrDouble        BINARY_DOUBLE := 15000000;
BEGIN
  vNumber := 100;
END;


/*
DECLARE
  VNUMBER              NUMBER(11,2) := 1200.50;
  VCHARFIX             CHAR(100) := 'TEXT 32767 bytes';
  VCHARVAR             VARCHAR2(100) := 'TEXT 32767 bytes';
  VBOOL                BOOLEAN := TRUE;
  VDATA                DATE := SYSDATE;
  VLONG                LONG := 'TEXT 32760 bytes';
  VROWID               ROWID;
  VTIMESTAMP           TIMESTAMP := SYSTIMESTAMP;
  VTIMESTAMPTZ         TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
  VUNICHARFIX          NCHAR(100) := 'TEXT 32767 bytes';
  VUNICHARVAR          NVARCHAR2(100) := 'TEXT 32767 bytes';
  VNUMBERINT           BINARY_INTEGER := 1200;
  VNUMBERFLOAT         BINARY_FLOAT := 15000000;
  VNUMBERDOUBLE        BINARY_DOUBLE := 15000000;
BEGIN
  VNUMBER := 100;
END;
*/