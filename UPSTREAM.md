# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `tomcat/tomcat8` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `build/tomcat/app/` | [`tomcat/tomcat8`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/tomcat/tomcat8) |
| `base/tomcat/tomcat8.0/` | [`base/tomcat/tomcat8.0`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/tomcat/tomcat8.0): the Dockerfile of `vulhub/tomcat:8.0` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/tomcat:8.0`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

`build/tomcat/Dockerfile` starts from `vulhub/tomcat:8.0` and copies `tomcat-users.xml` and `context.xml` (to the Manager and Host Manager), which Vulhub's compose file mounts (Isoloom has no bind mounts).

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
