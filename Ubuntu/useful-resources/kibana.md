<!--ts-->
* [Kibana](#kibana)
   * [Stop Kibana service](#stop-kibana-service)
   * [Run Kibana Service](#run-kibana-service)
   * [Kibana Status](#kibana-status)
   * [Acces kibana](#acces-kibana)
   * [See all indices Elasticsearch:](#see-all-indices-elasticsearch)

<!-- Created by https://github.com/ekalinin/github-markdown-toc -->
<!-- Added by: gil_diy, at: Thu 29 Dec 2022 15:18:07 IST -->

<!--te-->


# Kibana

## Stop Kibana service

```bash
sudo systemctl start kibana.service
```

## Run Kibana Service

```bash
sudo systemctl stop kibana.service
```

## Kibana Status

```bash
sudo systemctl status kibana.service
```


## Access kibana


```bash
localhost:5601
```

Server status details:
```bash
localhost:5601/api/status
```

## See all indices Elasticsearch:

http://localhost:5601/app/management/data/index_management/indices


##

In Kibana:

```bash
GET _search
{
  "query": {
    "match_all": {}
  } , "size": 50
}
```
