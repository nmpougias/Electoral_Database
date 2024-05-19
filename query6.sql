SELECT candidates.fullname, parties.partyName, electoral_constituencies.seats, electoral_constituencies.area
FROM candidates
     JOIN electoral_constituencies ON candidates.area_fk = electoral_constituencies.area
     JOIN parties ON candidates.partyID_fk = parties.partyID
WHERE area = "A Athens" AND partyName NOT IN ('PASOK')
