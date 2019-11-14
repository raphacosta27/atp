use groupk;
DROP TABLE IF EXISTS dimCourt;
CREATE TABLE dimCourt (
    `idCourt` INT(11) NOT NULL,
    `Court` varchar(45) DEFAULT NULL,
    `Surface` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`idCourt`)
);

DROP TABLE IF EXISTS dimMatch;
CREATE TABLE dimMatch (
    `idMatch` INT(11) NOT NULL,
    `Round` varchar(45) DEFAULT NULL,
    `Best of` int(11) DEFAULT NULL,
    `Comment` varchar(45) DEFAULT NULL,
    `Winner` varchar(50) DEFAULT NULL,
    `Loser` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`idMatch`)
);

DROP TABLE IF EXISTS dimTournament;
CREATE TABLE dimTournament (
    `idTournament` INT(11) NOT NULL,
    `Tournament` varchar(50) DEFAULT NULL,
    `Location` varchar(50) DEFAULT NULL,
    `ATP` int(11) DEFAULT NULL,
    `Series` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`idTournament`)
);

DROP TABLE IF EXISTS dimDate;
CREATE TABLE dimDate (
    `idDate` INT(11) NOT NULL,
    `dia` date DEFAULT NULL,
    `mes` date DEFAULT NULL,
    `ano` date DEFAULT NULL,
    PRIMARY KEY (`idDate`)
);

DROP TABLE IF EXISTS factResults;
CREATE TABLE factResults (
    `idCourt` INT(11) NOT NULL,
    `idMatch` INT(11) NOT NULL,
    `idTournament` INT(11) NOT NULL,
    `idDate` INT(11) NOT NULL,
    `WRank` int(11) DEFAULT NULL,
    `LRank` int(11) DEFAULT NULL,
    `WPts` int(11) DEFAULT NULL,
    `LPts` int(11) DEFAULT NULL,
    `W1` int(11) DEFAULT NULL,
    `L1` int(11) DEFAULT NULL,
    `W2` int(11) DEFAULT NULL,
    `L2` int(11) DEFAULT NULL,
    `W3` int(11) DEFAULT NULL,
    `L3` int(11) DEFAULT NULL,
    `W4` int(11) DEFAULT NULL,
    `L4` int(11) DEFAULT NULL,
    `W5` int(11) DEFAULT NULL,
    `L5` int(11) DEFAULT NULL,
    `Wsets` int(11) DEFAULT NULL,
    `Lsets` int(11) DEFAULT NULL,
    PRIMARY KEY (`idCourt`,`idMatch`,`idTournament`, `idDate`)
);

DROP TABLE IF EXISTS factBettingOdds;
CREATE TABLE factBettingOdds (
    `idMatch` INT(11) NOT NULL,
    `idDate` INT(11) NOT NULL,
    `B365W` float DEFAULT NULL,
    `B365L` float DEFAULT NULL,
    `EXW` float DEFAULT NULL,
    `EXL` float DEFAULT NULL,
    `LBW` float DEFAULT NULL,
    `LBL` float DEFAULT NULL,
    `PSW` float DEFAULT NULL,
    `PSL` float DEFAULT NULL,
    `MaxW` float DEFAULT NULL,
    `MaxL` float DEFAULT NULL,
    `AvgW` float DEFAULT NULL,
    `AvgL` float DEFAULT NULL,
    PRIMARY KEY (`idMatch`,`idDate`)
);


