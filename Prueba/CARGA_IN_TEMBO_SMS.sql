CREATE VOLATILE TABLE IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS (
    NUM_CLIENTE VARCHAR(9),
	DATEID INT
	) 
	ON COMMIT PRESERVE ROWS;

DROP TABLE IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS;
select * from IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS;

INSERT INTO RESULTS_CVE.MAF_IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS


    SELECT DISTINCT  NUM_CLIENTE
	CAST(TO_CHAR(CURRENT_DATE,'YYYYMMDD') AS INT)
    FROM IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS;


delete RESULTS_CVE.MAF_IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS WHERE DATEID=CAST(TO_CHAR(CURRENT_DATE,'YYYYMMDD') as INTEGER);
SEL * FROM RESULTS_CVE.MAF_IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS;
--DELETE FROM RESULTS_CVE.MAF_IN_AUTOMMES_EXXXC_TEMBO_SoHo_SMS WHERE DATEID<>20240410;