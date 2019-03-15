-- support VP
--==========================================================================================================================
-- GAZEBO COMMUNITY PATCH
--==========================================================================================================================
-- COMMUNITY
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS COMMUNITY (Type TEXT, Value INTEGER);

--Dummy Policies

INSERT INTO COMMUNITY (Type, Value)
VALUES ('CBPMC_MORERELIGION', 1);

INSERT INTO COMMUNITY (Type, Value)
VALUES ('DF_MOREBELIEF', 1);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'DF_MOREBELIEF' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1) AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='DF_MOREBELIEF' AND Value= 0);