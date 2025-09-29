# project
This is a project which combines my skills : Linux, Bash, Git, Networking, Docker. 

Project Description

Build a Network Health Monitor that checks the reachability and latency of multiple endpoints (e.g., google.com, github.com, default gateway). The results are logged into files, tracked with Git, and the whole system is containerized with Docker so it can run anywhere.

⸻

Project Breakdown

1.⁠ ⁠Bash Scripting
	•	Write a script network_monitor.sh.
	•	Define a list of hosts (google.com, github.com, 1.1.1.1, $GATEWAY).
	•	Check each using ping and curl -Is.
	•	Log results into logs/YYYY-MM-DD_HHMM.txt.

 2.⁠ ⁠Linux Skills
	•	Use cron to run the script every 15 minutes.
	•	Manage permissions so only the right user can write logs.
	•	Store logs in /var/log/network_monitor/ or in project logs/ folder.

3.⁠ ⁠Git Integration
	•	Initialize a Git repo.
	•	Commit script and logs regularly.
	•	Practice branching and pushing to GitHub.
	•	Git history will show how network health changed over time.

4.⁠ ⁠Networking Knowledge
	•	Use ping for connectivity and latency.
	•	Use curl for HTTP status checks.

5.⁠ ⁠Dockerization
	•	Write a Dockerfile that:
	•	Starts from Alpine/Ubuntu.
	•	Installs bash, curl, bind-tools, git.
	•	Copies network_monitor.sh into /app/.
	•	Runs it as container entrypoint.
	•	Run container with logs mounted locally:



# Step 1 - Initialising Git
Firstly i ran git init locally and initialised a git repo
I then took the necessary procedures to set up a public github repo so that i could share my learning 

# Step 2 - Script 🗒️

I first created the script which prompted for user input, 

<img width="839" height="627" alt="Screenshot 2025-09-29 at 20 18 47" src="https://github.com/user-attachments/assets/7d4409ad-143b-4c37-806f-26427df687a2" />

I quickly realised this was not the correct choice and after a couple hours, i managed to rewrite the script correctly
which does not prompt user input but is following the project description correctly 

# Step 3 - Logs/crontab
I then created a logs directory with the correct permissions so only the user is able to access and add files to the directory, this is where the output of the script monitoring the health of the networks is stored

<img width="675" height="352" alt="Screenshot 2025-09-29 at 20 26 29" src="https://github.com/user-attachments/assets/417cb62e-16af-405c-b270-aa48427c12df" />

I then configured crontab to run the script every 15 minutes so that network health is constantly being monitored

# Step 4 - Dockerfile 🐳
I created the Dockerfile which allows my service to be ran on any environment the exact same as it did on my machine 

<img width="574" height="229" alt="Screenshot 2025-09-29 at 20 22 31" src="https://github.com/user-attachments/assets/b49b20f7-33db-4194-9705-c8ae35b2006b" />

