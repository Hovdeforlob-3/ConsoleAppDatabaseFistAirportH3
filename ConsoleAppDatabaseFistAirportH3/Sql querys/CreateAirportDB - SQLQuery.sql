CREATE TABLE Airport (
  IATACode Varchar(20) PRIMARY KEY,
  Name Varchar(100),
  TownName Varchar(100),
);

CREATE TABLE Airline (
  Id Integer IDENTITY(1,1) PRIMARY KEY,
  Name Varchar(100),
  RouteOwnerId Integer
);

CREATE TABLE Router (
  RouteId Integer IDENTITY(1,1) PRIMARY KEY ,
  HomeIATACode Varchar(20),
  DestinationIATACode Varchar(20),
  RouteOwnerId Integer,

  CONSTRAINT FkHomeIATACode FOREIGN KEY (HomeIATACode) 
  REFERENCES Airport,
  CONSTRAINT FkDestinationIATACode FOREIGN KEY (DestinationIATACode) 
  REFERENCES Airport(IATACode),
  CONSTRAINT FkRouteOwnerIdR FOREIGN KEY (RouteOwnerId) 
  REFERENCES Airline(Id)

);

CREATE TABLE RouteOperator (
  RouteID Integer,
  RouteOwnerId Integer,
  --PRIMARY KEY (RouteID, RouteOwnerId),

  CONSTRAINT FkRouteID FOREIGN KEY (RouteID) 
  REFERENCES Router(RouteId),
  CONSTRAINT FkRouteOwnerIdOp FOREIGN KEY (RouteOwnerId) 
  REFERENCES Airline(Id)
);