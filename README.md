### How to use:

Update known_hosts for current user:

```
curl -fsSL https://raw.githubusercontent.com/twitcher07/update-github-public-keys/main/update_keys.sh | bash 
```

or update known_hosts for different user (when using root):

```
curl -fsSL https://raw.githubusercontent.com/twitcher07/update-github-public-keys/main/update_keys.sh | bash -s -- [path/to/user]/.ssh/known_hosts
```