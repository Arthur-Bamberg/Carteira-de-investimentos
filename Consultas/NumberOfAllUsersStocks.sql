select
    client.idClient,
    client.name,
    client.email,
    (select 
        nvl(sum(clientStock.quantity), 0)
        from clientStock
        where clientStock.FK_idClient = client.idClient 
    ) as numberOfStocks
from client