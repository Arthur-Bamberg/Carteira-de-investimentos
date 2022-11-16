select
    reitAcquisition.idReitAcquisition,
    reit.name as reitName,
    reit.code,
    client.name as clientName,
    reitAcquisition.aDate,
    reitAcquisition.quantity,
    reitAcquisition.price
from reitAcquisition
inner join reit on reitAcquisition.FK_idReit = reit.idReit
inner join client on reitAcquisition.FK_idClient = client.idClient
where clientStock.FK_idClient = 1--ID do cliente