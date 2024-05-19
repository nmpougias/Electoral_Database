# VOTER 
# Create user "voter" that can perform select queries in the DB
CREATE USER 'voter'@'localhost' IDENTIFIED BY 'myvpassword';
CREATE USER 'voter'@'%' IDENTIFIED BY 'myvpassword';
GRANT SELECT (partyName) ON mydb.Parties TO 'voter'@'localhost';
GRANT SELECT (partyName) ON mydb.Parties TO 'voter'@'%';
GRANT SELECT (fullname) ON mydb.Candidates TO 'voter'@'localhost';
GRANT SELECT (fullname) ON mydb.Candidates TO 'voter'@'%';
GRANT SELECT (partyVotes) ON mydb.Parties TO 'voter'@'localhost';
GRANT SELECT (partyVotes) ON mydb.Parties TO 'voter'@'%';
GRANT SELECT (totalPercentage) ON mydb.Parties TO 'voter'@'localhost';
GRANT SELECT (totalPercentage) ON mydb.Parties TO 'voter'@'%';
GRANT SELECT (ranking) ON mydb.Parties TO 'voter'@'localhost';
GRANT SELECT (ranking) ON mydb.Parties TO 'voter'@'%';

# COMMITTEE MEMBER 
# Create user "committeemember" that can perform select, insert and update but only from the server of the DB (localhost)
CREATE USER 'committeemember'@'localhost' IDENTIFIED BY 'mycmpassword';
GRANT SELECT, INSERT, UPDATE ON mydb.Voters TO 'committeemember'@'localhost';
GRANT SELECT ON mydb.Parties TO 'committeemember'@'localhost';
GRANT SELECT ON mydb.Candidates TO 'committeemember'@'localhost';
GRANT SELECT ON mydb.Voting_Stations TO 'committeemember'@'localhost';
GRANT SELECT ON mydb.Phones TO 'committeemember'@'localhost';

# DATABASE ADMINISTRATOR
# Create user "admin" that can perform select, insert, update and delete but only from the server of the DB (localhost)
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'mysuperpassword';
GRANT ALL PRIVILEGES ON mydb.* TO 'admin'@'localhost';