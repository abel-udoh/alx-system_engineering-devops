REPORT OF SERVER OUTAGE INCIDENTS

Our entire server infrastructure experienced a server outage on June 28, 2023, making it impossible for our clients to access our services. 
We deeply regret any inconvenience or monetary loss this has caused them.


ISSUE OVERVIEW

We encountered a server outage (downtime) on all of our server infrastructure on June 28, 2023 (11:25 AM), which lasted for 1 hour and 20 minutes. 
Due to their inability to use our services, our clients encountered an HTTP 500 error, which had a 100% negative effect on their business. 
The primary cause was the failure to thoroughly verify all implemented upgrades before deploying them to live systems.


Timeline (all time in WAT)

Time (WAT)	  Actions
11:30 AM		  Implementation of upgrades starts
12:00 PM		  Server downtime starts
12:15 AM		  Pagers informed the on-call crew
12:25 AM		  On-call team recognition
12:29 AM		  Start of the rollback
12:34 AM		  Successful rollback
12:40 AM		  Server restart started
12:45 AM		  All traffic is back online


ROOT CAUSE

Without previously releasing on our test environments and carrying out all essential unit testing, 
a server upgrade was started across all of our production servers at 11:30 AM (WAT). 
The upgrade that was distributed to the production servers included a requirement for 
third-party software authentication; however, the new implementation is not supported 
by the current version that is installed on our servers, which is what caused the outage 
to occur. By rolling back the servers to their former state and then upgrading the 
the current version on our servers, we were able to swiftly fix the issue.


PREVENTIVE ACTIONS

Before delivering to a live server, we push any desired modifications first to our test environments.
The performance metrics threshold should be raised to alert available engineers of a potential server crash.
