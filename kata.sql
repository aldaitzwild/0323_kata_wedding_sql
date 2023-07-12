/**
    1/ Importer ces données dans une BDD SQL
    2/ Certains des employés se sont mariés entre durant le weekend. 
        Ecrire la requête qui permet de ceux qui ont un spouse_id prenne le nom
        de leur époux.

        Ex: Quemby	Black doit devenir Quemby	Gonzales
    3/ Ecrire la requête qui vérifie que tout s'est bien passé
*/
CREATE DATABASE wedding_kata;

USE wedding_kata;

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `firstname` varchar(255) default NULL,
  `lastname` varchar(255) default NULL,
  `spouse_id` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `employee` (`firstname`,`lastname`,`spouse_id`)
VALUES
  ("Brandon","Jenkins",0),
  ("Blossom","Larsen",0),
  ("Ingrid","Bender",0),
  ("Amos","Patterson",0),
  ("Caesar","Gonzales",0),
  ("Lareina","Wilson",0),
  ("Quemby","Black",5),
  ("Noelani","Carr",0),
  ("Vivian","Hicks",0),
  ("Destiny","Anderson",0),
  ("Nasim","Compton",0),
  ("Maggy","Soto",0),
  ("Jared","Hamilton",0),
  ("Walker","Rivas",0),
  ("Kelly","Rosales",0),
  ("Louis","Fletcher",0),
  ("Susan","Gamble",0),
  ("Callie","Bonner",0),
  ("Sharon","Woodard",10),
  ("Owen","Logan",0),
  ("Nasim","Moses",0),
  ("Nita","Ratliff",0),
  ("Judith","Hopper",0),
  ("Joelle","Santana",0),
  ("Wyatt","Harris",0),
  ("Walker","Bauer",0),
  ("Megan","Dodson",0),
  ("Scarlet","Ingram",0),
  ("Felix","Ware",0),
  ("Deanna","Welch",0),
  ("Justin","Levy",17),
  ("Indira","Rowe",0),
  ("Zachary","Stuart",0),
  ("Lisandra","Pugh",0),
  ("Laith","Austin",0),
  ("Ulric","Horn",0),
  ("Quinn","Keith",0),
  ("Beau","Palmer",0),
  ("Jamalia","Hubbard",0),
  ("Ivana","Guthrie",0),
  ("Kalia","Robinson",0),
  ("Octavia","Chandler",0),
  ("Xenos","Vargas",0),
  ("Yvette","Golden",0),
  ("Stewart","Davenport",0),
  ("Norman","Duke",0),
  ("Macaulay","Chambers",0),
  ("Leroy","Donovan",0),
  ("Claire","Stout",0),
  ("Jordan","Chapman",23),
  ("Craig","Pugh",0),
  ("Cade","Gallegos",0),
  ("Zeus","Franks",0),
  ("Mollie","Logan",0),
  ("Judith","Fernandez",0),
  ("Wallace","Britt",0),
  ("Sydney","Riddle",0),
  ("Scarlett","Haynes",0),
  ("Michael","Wade",0),
  ("Donovan","Sanford",0),
  ("Kenneth","Prince",0),
  ("Wing","Hill",0),
  ("Alea","Sargent",0),
  ("Ina","Gill",0),
  ("Robert","Goodwin",0),
  ("Ryder","Hernandez",0),
  ("Asher","Hendricks",34),
  ("Wynter","Walsh",0),
  ("Anthony","Shepard",0),
  ("Elton","Preston",0),
  ("Bianca","Smith",0),
  ("Eve","Rios",0),
  ("Kirby","Sparks",0),
  ("Stone","Parks",0),
  ("Flavia","Mcmahon",0),
  ("Martina","Ratliff",0),
  ("Hector","Bird",0),
  ("Abigail","Gray",0),
  ("Daphne","Wade",0),
  ("Destiny","Fry",0),
  ("Abraham","Porter",0),
  ("Odysseus","Fitzpatrick",0),
  ("Elliott","Flowers",0),
  ("Wilma","Herring",0),
  ("Lareina","Stokes",0),
  ("George","Kaufman",0),
  ("Fletcher","Schwartz",45),
  ("Oscar","Nelson",0),
  ("Quinlan","Miller",0),
  ("Ezra","Barnes",0),
  ("Iola","Morrow",0),
  ("Jana","Doyle",0),
  ("Brielle","Alston",0),
  ("Lila","Wilson",0),
  ("Maggie","Blankenship",0),
  ("Philip","Frost",0),
  ("Richard","Gallagher",54),
  ("Patience","Erickson",0),
  ("Sheila","Holmes",0),
  ("Yael","Anderson",0);


  /**
    Correction 
  */

UPDATE employee as nameTaker, employee as nameGiver 
INNER JOIN nameTaker ON nameTaker.spouse_id = nameGiver.id
SET nameTaker.lastname = nameGiver.lastname
WHERE nameTaker.spouse_id <> 0;