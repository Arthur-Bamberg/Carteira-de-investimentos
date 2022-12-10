create view allUserAcquisition as
select
    client.name as clientName,
    nvl(stock.name, reit.name) as acquisitionName,
    nvl(stock.code, reit.code) as code,
    nvl(stockAcquisition.idStockAcquisition, reitAcquisition.idReitAcquisition) as idAcquisition,
    nvl(stockAcquisition.aDate, reitAcquisition.aDate) as aDate,
    nvl(stockAcquisition.quantity, reitAcquisition.quantity) as quantity,
    nvl(stockAcquisition.price, reitAcquisition.price) as price
from client
left join stockAcquisition on stockAcquisition.FK_idClient = client.idClient
left join stock on stockAcquisition.FK_idStock = stock.idStock
left join reitAcquisition on reitAcquisition.FK_idClient = client.idClient
left join reit on reitAcquisition.FK_idReit = reit.idReit
where stockAcquisition.idStockAcquisition is not null or reitAcquisition.idReitAcquisition is not null