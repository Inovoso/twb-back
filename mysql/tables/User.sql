DROP TABLE IF EXISTS UserToken;
DROP TABLE IF EXISTS User;

CREATE TABLE User (
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_UserRole INT NOT NULL,
    Id_Gender INT NOT NULL,
    Username VARCHAR(64) NOT NULL,
    Password CHAR(32) NOT NULL,
    FirstName VARCHAR(64) NOT NULL,
    LastName VARCHAR(64) NOT NULL,
    DocumentNumber VARCHAR(64) NOT NULL,
    Active BOOLEAN NOT NULL,
    
    FOREIGN KEY (Id_UserRole) REFERENCES UserRole(Id),
    FOREIGN KEY (Id_Gender) REFERENCES Gender(Id)
);