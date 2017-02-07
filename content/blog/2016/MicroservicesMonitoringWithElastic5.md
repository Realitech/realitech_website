title=Micro Service Monitoring with Elastic 5
date=2013-08-25
type=post
tags=blog
status=draft
~~~~~~

# Micro Service Monitoring with Elastic 5

* Log shipping and monitoring
* Detailed monitoring with Beats  


## Log Shipping and Monitoring
* Logstash and Filebeats

## Detailed monitoring with Beats
* Uptime Monitoring with
** Heart Beats
** Metric Beats
* Native integration with
  [Metrics Elasticsearch Reporter](https://github.com/elastic/elasticsearch-metrics-reporter-java)

### HeartBeats an Alerting ###
Heartbeat provides monitors to check the status of hosts at set intervals. You configure each monitor individually.
Heartbeat currently provides monitors for ICMP, TCP, and HTTP
* ICMP was designed as the debugging, troubleshooting, and error reporting mechanism for IP.
* TCP  Use the tcp monitor to connect via TCP. You can optionally configure this monitor to verify the endpoint by sending and/or receiving a custom payload.
* HTTP Use the http monitor to connect via HTTP. You can optionally configure this monitor to verify that the service returns the expected response,
such as a specific status code, response header, or content.

Tcp and http monitors both support SSL/TLS and some proxy settings.

### Configuring HeartBeat Monitor

For our microservicew we use a http monitor, while there is a higher overhead than ICMP our http response is
* curl-able by support users for diagnostic purposes
* provides human readable information regarding the status of the microservice and dependencies.

A sample heart beat monitor yaml file used by the heart beat component
```yaml
    type: http
    name: http-microservice-name
    # Enable/Disable monitor
    enabled: true

    # Configure task schedule
    schedule: '@every 5s' # every 5 seconds from start of beat

    # Configure URLs to ping
    urls: ["http://localhost:9200/health"]

    # Configure IP protocol types to ping on if hostnames are configured.
    # Ping all resolvable IPs if `mode` is `all`, or only one IP if `mode` is `any`.
    ipv4: true
    ipv6: true
    mode: any
```

![monitoring] (./microServiceMonitoring.png "monitoring")


### Metrics and Service Level Agreements

### Alerting
Elastic comes with an alerting plugin. To install:

```bash
  bin/elasticsearch-plugin install x-pack
  bin/kibana-plugin install x-pack
  # start or restart
  bin/kibana
```  
the installation of x-pack will also add security restrictions and you will now be prompted to login with a username and password

The first an initial login is `kibana` with password `changeme`

A new `monitoring` tab has been added that is security restricted

```You are not authorized to access Monitoring. To use Monitoring, you need the privileges granted by both the `kibana_user` and `monitoring_user` roles.```

*Important* Login with the superuser `elastic` and the default password `changme`. Then change the default password and configure the users and roles of elastic/kibana on the `Management` tab.

At the time of writing with 5.2.0 the alerting (called watcher) is configured by an elastic query. The watcher can be configured to:
* the query to trigger an action
* the interval to execute the query
* the actions on whether the query is true or false. Including:
  * Email Action - send an email on event
  * Webhook Action -  send a request to any web service
  * Index Action -
  * Logging Action -  log text to the standard Elasticsearch logs
  * HipChat Action - send a message to atlassian HipChat
  * Slack Action - send a message to Slack
  * PagerDuty Action - send a message to the pageDuty api
  * Jira Action - send a message to the jira api

## Links and References
* [Community Beats](https://www.elastic.co/guide/en/beats/libbeat/master/community-beats.html) tools
