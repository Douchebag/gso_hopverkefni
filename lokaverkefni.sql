CREATE DATABASE 0102992099_lokaverkefni

CREATE TABLE utgefandi
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50),
  stofnandi VARCHAR(50),
  ar_stofnad DATE
)

CREATE TABLE diskur
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50),
  utgafudagur DATE,
  fjoldi_laga INT,
  lengd_sek INT,
  utgefandi_ID INT,
  FOREIGN KEY (utgefandi_ID)
    REFERENCES utgefandi(ID)
)

CREATE TABLE thema
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50)
)

CREATE TABLE flokkur
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50)
)

CREATE TABLE tegund
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50)
)

CREATE TABLE lag
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50) NOT NULL,
  lengd_sek INT NOT NULL,
  texti LONGTEXT,
  tegund_ID INT,
  diskur_ID INT,
  FOREIGN KEY (tegund_ID)
    REFERENCES tegund(ID),
  FOREIGN KEY (diskur_ID)
    REFERENCES diskur(ID)
)

CREATE TABLE flytjandi
(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nafn VARCHAR(50),
  faedingardagur DATE,
  Danardagur DATE,
  thema_ID INT,
  flokkur_ID INT,
  lag_ID INT,
  FOREIGN KEY (thema_ID)
    REFERENCES Thema(ID),
  FOREIGN KEY (flokkur_ID)
    REFERENCES flokkur(ID),
  FOREIGN KEY (lag_ID)
    REFERENCES lag(ID)
)
