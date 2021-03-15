-- Recompile Package Specification

ALTER PACKAGE PCK_EMPREGADOS COMPILE SPECIFICATION;

-- Recompile Package Body

ALTER PACKAGE PCK_EMPREGADOS COMPILE BODY;

-- Remove Package Body 

DROP PACKAGE BODY PCK_EMPREGADOS;

-- Remove Package Body and Package Specification

DROP PACKAGE PCK_EMPREGADOS;