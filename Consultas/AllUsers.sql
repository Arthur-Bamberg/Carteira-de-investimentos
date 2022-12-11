create view allUsers as
select
    client.idClient,
    client.name,
    client.email
from client