USE AdventureWorks2019
GO

--Se requiere saber la duración de las ofertas especiales y motivos

SELECT ssop.ProductID, sso.SpecialOfferID, sso.Description AS Motivo, DATEDIFF(DAY, StartDate, EndDate) AS Duracion_dias
FROM Sales.SpecialOffer sso
INNER JOIN Sales.SpecialOfferProduct ssop
ON ssop.SpecialOfferID = sso.SpecialOfferID