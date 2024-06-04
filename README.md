## README: List Users with Read Access to a GitHub Repository

This script retrieves a list of users with read access (pull access) to a specified GitHub repository.

**Requirements:**

* Bash shell
* `curl` command
* `jq` command (for parsing JSON output)

**Instructions:**

1. **Save the Script:** Save the script content as a file named `list_read_access.sh`.
2. **Set Credentials (Optional):**
    * For improved security, it's recommended to avoid storing your username and token directly in the script. You can provide them as arguments when running the script.
    * If you choose to store them in the script, replace `$username` and `$token` with your actual GitHub username and personal access token (generated from your account settings).
    * else export the username and token
        ```bash
        export username="<username>"
        ```
         ```bash
        export token="<token>"
        ```
    * **Important:** Never share your personal access token publicly.

3. **Run the Script:**
    * **With stored credentials:**
        ```bash
        bash list_read_access.sh <repo_owner> <repo_name>
        ```
        Replace `<repo_owner>` and `<repo_name>` with the actual owner and repository name on GitHub.
    * **With arguments:**
        ```bash
        bash list_read_access.sh <repo_owner> <repo_name> -u <username> -t <token>
        ```
        Replace the placeholders with your information:
            * `<repo_owner>`: Owner of the GitHub repository
            * `<repo_name>`: Name of the repository
            * `-u <username>`: Flag followed by your GitHub username
            * `-t <token>`: Flag followed by your personal access token (**never share this publicly!**)

**Example Output:**

```
Listing users with read access to owner/repo_name...
user1
user2
```
**To Get all the Data:**
* Remove pipe along with  `jq` command .
  ```bash
  collaborators="$(github_api_get "$endpoint" )"
  ```
  **Example Output:**
  ```
   Listing users with read access to matthew010505/Bash_scripts...
Users with read access to matthew010505/Bash_scripts:
[
  {
    "login": "matthew010505",
    "id": 117917780,
    "node_id": "U_kgDOBwdIVA",
    "avatar_url": "https://avatars.githubusercontent.com/u/117917780?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/matthew010505",
    "html_url": "https://github.com/matthew010505",
    "followers_url": "https://api.github.com/users/matthew010505/followers",
    "following_url": "https://api.github.com/users/matthew010505/following{/other_user}",
    "gists_url": "https://api.github.com/users/matthew010505/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/matthew010505/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/matthew010505/subscriptions",
    "organizations_url": "https://api.github.com/users/matthew010505/orgs",
    "repos_url": "https://api.github.com/users/matthew010505/repos",
    "events_url": "https://api.github.com/users/matthew010505/events{/privacy}",
    "received_events_url": "https://api.github.com/users/matthew010505/received_events",
    "type": "User",
    "site_admin": false,
    "permissions": {
      "admin": true,
      "maintain": true,
      "push": true,
      "triage": true,
      "pull": true
    },
    "role_name": "admin"
  }
]
   ```
  
  
  

**Additional Notes:**

* The script uses the `curl` command to make authenticated API requests to GitHub.
* The `jq` command is used to parse the JSON response from the GitHub API and extract usernames with pull access.
* If no users have read access, the script will display a message indicating that.

**Security Considerations:**

* Avoid storing your personal access token directly in the script.
* Consider using environment variables or a secure configuration management system to store your credentials.
* Limit the permissions granted to your personal access token based on the script's needs.

