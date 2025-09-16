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
