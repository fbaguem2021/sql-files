use skill_track

INSERT INTO Company VALUES('CIF1','Centre Estudis Politecnics', '');
INSERT INTO Company VALUES('CIF2','Stucom', '');

INSERT INTO [Role] VALUES ('superadmin', 1, 1);
INSERT INTO [Role] VALUES ('profesor', 0, 1);
INSERT INTO [Role] VALUES ('student', 0, 1);

INSERT INTO [Role] VALUES ('superadminmac', 1, 2);
INSERT INTO [Role] VALUES ('profesormac', 0, 2);
INSERT INTO [Role] VALUES ('studentmac', 0, 2);

INSERT INTO [User] VALUES ('Alex', 'Guirao', 'alex@gmail.com', 'pass', 'none', 1, 3); --cep,student
INSERT INTO [User] VALUES ('Antonio', '???', 'antonio@gmail.com', 'pass', 'none', 1, 1); --cep,admin
INSERT INTO [User] VALUES ('Francisco', 'Fernandez', 'francisco@gmail.com', 'pass', 'none', 1, 2); --cep,profesor
INSERT INTO [User] VALUES ('Oriol', 'Holguin', 'oriol@gmail.com', 'pass', 'none', 2, 6); --stucom,studentmac

-- Type User = 1
-- Type Admin = 2
-- Type Both = 3
INSERT INTO Permission VALUES ('Add User', 2);
INSERT INTO Permission VALUES ('Add Role', 2);
INSERT INTO Permission VALUES ('Add Review', 1);

INSERT INTO Role_Permission VALUES (1, 1, 1); --true,Add User, superadmin
INSERT INTO Role_Permission VALUES (1, 3, 2); --true,Add Review,profesor
INSERT INTO Role_Permission VALUES (1, 1, 3); --true,Add User, superadminmac
INSERT INTO Role_Permission VALUES (1, 3, 4); --true,Add Review,prosesormac


INSERT INTO Role_Interactive_Permission VALUES(1, 3, 2, 5); --true,Add Review,profesor,student
INSERT INTO Role_Interactive_Permission VALUES(1, 3, 4, 6); --true,Add Review,profesormac,studentmac

INSERT INTO [Group] VALUES ('DAM', 1, 1); --DAM,true,cep
INSERT INTO [Group] VALUES ('DAW', 1, 1); --DAW,true,cep
INSERT INTO [Group] VALUES ('DAM', 1, 2); --DAM,true,stucom
INSERT INTO [Group] VALUES ('DAW', 1, 2); --DAM,true,stucom

INSERT INTO UserGroup VALUES ('2022-02-14', NULL, 1, 1, 1); --startdate,finaldate,DAM,cep,Alex
INSERT INTO UserGroup VALUES ('2022-02-14', NULL, 2, 2, 1); --startdate,finaldate,DAW,cep,Alex
INSERT INTO UserGroup VALUES ('2022-02-14', NULL, 1, 1, 3); --startdate,finaldate,DAM,cep,Francisco
INSERT INTO UserGroup VALUES ('2022-02-14', NULL, 3, 2, 4); --startdate,finaldate,DAM,stucom,Oriol

INSERT INTO SkillList VALUES ('FRASE', 1, 1); --nombre,true,cep
INSERT INTO SkillList VALUES ('CLASE', 1, 1); --nombre,true,cep

INSERT INTO GroupSkillList VALUES ('2022-02-14', NULL, 1, 1, 1); --startdate,finaldate,DAM,cep,FRASE
INSERT INTO GroupSkillList VALUES ('2022-02-14', NULL, 2, 1, 1); --startdate,finaldate,DAM,cep,CLASE

INSERT INTO Skill VALUES('Flexibilidad', 1, 'F', 'Desc Flexibilidad', 1, 1); --true,cep,FRASE
INSERT INTO Skill VALUES('Responsabilidad', 1, 'R', 'Desc Responsabilidad',1, 1); --true,cep,FRASE
INSERT INTO Skill VALUES('Comunicacion', 1, 'C', 'Desc Comunicacion', 1, 2); --true,cep,CLASE

INSERT INTO Kpi VALUES('Kpi 1 Flexibilidad', 1, 'Desc Kpi 1 de Flexibilidad', 1); --true,Flexibilidad
INSERT INTO Kpi VALUES('Kpi 1 Responsabilidad', 1, 'Desc Kpi 1 de Responsabilidad', 2); --true,Responsabilidad
INSERT INTO Kpi VALUES('Kpi 1 Comunicacion', 1, 'Desc Kpi 1 Comunicacion', 3); --true,Comunicacion

INSERT INTO Review VALUES ('2022-02-14', 1, 1, 3, 1); --Fecha,mark,Flexibilidad,Francisco,Alex
INSERT INTO Review VALUES ('2022-02-13', 1, 1, 3, 1); --Fecha,mark,Flexibilidad,Francisco,Alex
INSERT INTO Review VALUES ('2022-02-14', 1, 1, 4, 4); --Fecha,mark,Flexibilidad,Oriol,Oriol

select * from Company
select * from [Role]
select * from Permission
select * from Role_Interactive_Permission
select * from [Group]
select * from [User]
select * from UserGroup
select * from GroupSkillList
select * from Skill
select * from SkillList
select * from Kpi
select * from Review
--select * from PostToAdmin
--select * from [Notification]
select * from Role_Permission

