select
    client.idClient,
    client.name,
    client.email,
    sum(clientReit.quantity) as numberOfReits
from client
inner join clientReit on clientReit.FK_idClient = client.idClient
where clientStock.FK_idClient = 1--ID do cliente
group by client.idClient