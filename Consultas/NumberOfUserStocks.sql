select
    client.idClient,
    client.name,
    client.email,
    sum(clientStock.quantity) as numberOfStocks
from client
inner join clientStock on clientStock.FK_idClient = client.idClient
where clientStock.FK_idClient = 1--ID do cliente
group by client.idClient