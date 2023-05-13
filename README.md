# Git via Reverse Proxy Authentication

# How to use

```bash
# 1. Run
docker-compose up -d

# 2. Prepare `passwd`
docker exec -it git-via-reverse-proxy-authn-apache-1 /opt/rh/httpd24/root/usr/bin/htpasswd -c /etc/httpd/passwd sample-user
```

## :warning: Caution

- There is a name resolution problem that MySQL do not recognize Apache proprly.
  If you want to use Apache session module, please fix IP address in `docker-compose.yml`.
- As git remote server, GitLab is used, so it may cause trouble with memory or CPU.
