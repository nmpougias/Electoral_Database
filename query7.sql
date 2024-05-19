SELECT partyName
FROM parties
WHERE ranking = '1o' 
UNION
SELECT candidates.fullname
FROM candidates JOIN parties ON candidates.partyID_fk = partyID
WHERE ranking IN
    (SELECT MAX(ranking) FROM parties)
