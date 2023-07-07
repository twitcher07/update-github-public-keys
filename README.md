# How to use:

## Step 1: Remove github IP addresses
```
curl -fsSL https://raw.githubusercontent.com/twitcher07/update-github-public-keys/main/remove_ips.sh | bash
```
or pass a path to the known_hosts file that you want to edit (for when using user with sudo privileges)
```
curl -fsSL https://raw.githubusercontent.com/twitcher07/update-github-public-keys/main/remove_ips.sh | bash -s -- [path/to/user]/.ssh/known_hosts
```
## Step 2: Add github.com public keys
For current user:

```
curl -fsSL https://raw.githubusercontent.com/twitcher07/update-github-public-keys/main/update_keys.sh
```
or pass a path to the known_hosts file that you want to edit (for when using user with sudo privileges)
```
curl -fsSL https://raw.githubusercontent.com/twitcher07/update-github-public-keys/main/update_keys.sh | bash -s -- [path/to/user]/.ssh/known_hosts
```
