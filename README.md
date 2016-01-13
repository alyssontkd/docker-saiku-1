# docker-saiku
[Saiku Community][1]  Docker image

## Docker
Pull the [timlien/docker-saiku][2] image and run it with following command.
```bash
docker pull timlien/docker-saiku
docker run -d -p 8080:8080 --name docker-saiku timlien/docker-saiku
```

## Saiku
You can the visit the your host in a browser to get started. The default username/password is admin/admin.
```
http://yourhostname:8080
```

[1]: http://community.meteorite.bi/
[2]: https://hub.docker.com/r/timlien/docker-saiku/