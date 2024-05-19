SELECT partyName, ranking FROM parties
WHERE ranking = '1o' 
UNION
SELECT partyName, ranking FROM parties
WHERE ranking = '2o'
UNION
SELECT partyName, ranking FROM parties
WHERE ranking = '3o'
UNION
SELECT partyName, ranking FROM parties
WHERE ranking = '4o'
UNION
SELECT partyName, ranking FROM parties
WHERE ranking = '5o'