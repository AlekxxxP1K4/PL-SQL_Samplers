BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
            JOB_NAME => '"HR"."JOB_INSERE_DATA_AGENDA"',
            PROGRAM_NAME => '"HR"."PRC_INSERE_AGENDA"',
            SCHEDULE_NAME => '"HR"."SCH_10_SECONDS"',
            ENABLED => FALSE,
            AUTO_DROP => FALSE,
            COMMENTS => 'JOB INSERE DATA NA AGENDA',             
            JOB_STYLE => 'REGULAR');

    DBMS_SCHEDULER.ENABLE(
             NAME => '"HR"."JOB_INSERE_DATA_AGENDA"');

END;