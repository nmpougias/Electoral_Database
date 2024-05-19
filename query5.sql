SELECT voter_validated_by_cm_at.voters_userID_fk, voters.dateOfBirth
FROM users
		JOIN committiee_members ON committiee_members.userID_fk = users.userID
        JOIN voter_validated_by_cm_at ON committiee_members.userID_fk = voter_validated_by_cm_at.cms_userID_fk
        JOIN voters ON voters.userID_fk = voter_validated_by_cm_at.voters_userID_fk
WHERE users.fullname = "Manousos Trikalas"
