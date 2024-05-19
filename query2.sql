SELECT candidates.fullname, candidates.area_fk, candidates.partyID_fk, parties.partyName, parties.partyID, parties.president
FROM candidates
JOIN parties ON candidates.partyID_fk = partyID
WHERE partyName = "Nea Dimokratia" AND area_fk = "Ioannina"
