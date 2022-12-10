select
    client.idClient,
    client.name,
    client.email,
    (select 
        nvl(sum(clientReit.quantity), 0)
        from clientReit
        where clientReit.FK_idClient = client.idClient 
    ) as numberOfReits
from client
where client.idClient = 1--ID do cliente