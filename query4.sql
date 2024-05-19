SELECT candidates.fullname, partyName, seats, area
FROM candidates
     JOIN electoral_constituencies ON candidates.area_fk = area
     JOIN parties ON candidates.partyID_fk = partyID
WHERE area = "Magnesia" AND partyName = "PASOK" 
