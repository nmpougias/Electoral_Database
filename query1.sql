SELECT electoral_constituencies.area, electoral_constituencies.seats, voting_stations.stationID, voting_stations.name, voters.userID_fk
FROM electoral_constituencies 
     JOIN voting_stations ON voting_stations.area_fk = area
     JOIN voters ON voters.area_fk = area
WHERE area = "A Thessaloniki"