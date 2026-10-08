# Tomcat 8 Manager Weak Password and WAR Upload

[Vulhub](https://vulhub.org)'s [`tomcat/tomcat8`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/tomcat/tomcat8) environment, by
phith0n and the Vulhub contributors: Tomcat 8.0 whose Manager application is reachable from anywhere and protected by a weak password, so a logged-in user deploys a WAR and runs code. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/tomcat:8.0` with Vulhub's user and context files copied in ([`build/tomcat/`](build/tomcat)); the environment folder is vendored in [`build/tomcat/app/`](build/tomcat/app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| tomcat | Apache Tomcat 8.0 on port 8080 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/manager/html (the Tomcat Manager login). The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/tomcat/tomcat8/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
