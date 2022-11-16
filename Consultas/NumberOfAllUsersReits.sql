select
    client.idClient,
    client.name,
    client.email,
    sum(clientReit.quantity) as numberOfReits
from client
inner join clientReit on clientReit.FK_idClient = client.idClient
group by client.idClient