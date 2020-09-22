BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Esteban Segura Benavides','');
INSERT INTO "Account" VALUES(2,'Isaac Matinez','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2020-09-30','Frozen','Can Food','4');
INSERT INTO "Delivery_Item__c" VALUES(2,'2020-09-29','Non-refrigerated','Dog Food','4');
INSERT INTO "Delivery_Item__c" VALUES(3,'2020-09-30','Frozen','Beef','2');
INSERT INTO "Delivery_Item__c" VALUES(4,'2020-11-30','Frozen','Beans','1');
INSERT INTO "Delivery_Item__c" VALUES(5,'2020-09-30','Refrigerated','Vegetables','2');
INSERT INTO "Delivery_Item__c" VALUES(6,'2020-09-30','Frozen','Fish','3');
INSERT INTO "Delivery_Item__c" VALUES(7,'2020-10-31','Frozen','Chicken','2');
INSERT INTO "Delivery_Item__c" VALUES(8,'2020-09-30','Non-refrigerated','Rice','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2020-09-21T07:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(2,'2020-09-16T19:00:00.000+0000','Canceled','2');
INSERT INTO "Delivery__c" VALUES(3,'2020-09-01T05:30:00.000+0000','Completed','1');
INSERT INTO "Delivery__c" VALUES(4,'2020-09-22T17:00:00.000+0000','Requested','1');
COMMIT;
