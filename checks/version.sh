#!/bin/sh
# The default page names Apache Tomcat 8.0, and the Manager challenges with HTTP Basic auth.
set -e
curl -fsS http://tomcat:8080/ | grep -q 'Apache Tomcat/8\.0'
curl -sSI http://tomcat:8080/manager/html | grep -qi '^www-authenticate: Basic'
