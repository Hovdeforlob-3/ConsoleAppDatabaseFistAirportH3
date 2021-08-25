
-- IATACode, Name, TownName
INSERT INTO dbo.Airport VALUES ('CPH', 'Kastrup Airport','Copenhagen');
INSERT INTO dbo.Airport VALUES ('LHR', 'Heathrow Airport', 'London');
INSERT INTO dbo.Airport VALUES ('MAD', 'Adolfo Suárez Madrid–Barajas Airport', 'Madrid');

-- Name ,RouteOwnerId
INSERT INTO dbo.Airline VALUES ('SAS', 1);
INSERT INTO dbo.Airline VALUES ('Easyjet', 2);
INSERT INTO dbo.Airline VALUES ('Ryanair', 3);

-- HomeIATACode, DestinationIATACode, RouteOwnerId
INSERT INTO dbo.Router VALUES ('CPH','LHR', 1);
INSERT INTO dbo.Router VALUES ('CPH', 'MAD', 3);
INSERT INTO dbo.Router VALUES ('MAD', 'LHR', 2);

-- RouteID, RouteOwnerId
INSERT INTO dbo.RouteOperator VALUES (1, 1);
INSERT INTO dbo.RouteOperator VALUES (2, 3);
INSERT INTO dbo.RouteOperator VALUES (3, 2);