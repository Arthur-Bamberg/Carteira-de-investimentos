select
    stockAcquisition.idStockAcquisition,
    stock.name as stockName,
    stock.code,
    client.name as clientName,
    stockAcquisition.aDate,
    stockAcquisition.quantity,
    stockAcquisition.price
from stockAcquisition
inner join stock on stockAcquisition.FK_idStock = stock.idStock
inner join client on stockAcquisition.FK_idClient = client.idClient
where client.idClient = 1--ID do cliente