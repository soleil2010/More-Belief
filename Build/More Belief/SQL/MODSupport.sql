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

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'CBPMC_MORERELIGION' AND EXISTS (SELECT * FROM Buildings WHERE Type='BUILDING_JCHURCH');
