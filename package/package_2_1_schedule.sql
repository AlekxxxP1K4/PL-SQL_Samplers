BEGIN
    DBMS_SCHEDULER.CREATE_SCHEDULE (
        SCHEDULE_NAME  => 'SCH_10_SECONDS',
        START_DATE     => SYSTIMESTAMP,
        REPEAT_INTERVAL  => 'FREQ=SECONDLY;INTERVAL=10',
        END_DATE => TO_TIMESTAMP_TZ('2021/12/13 10:13:18 00:00', 'YYYY/MM/DD HH:MI:SS TZH:TZM'),
        COMMENTS => 'EVERY 10_SECONDS'
        );
END;