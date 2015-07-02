# [Hubot](https://hubot.github.com/) base image

Contains the fabric8 hubot plugins and dependencies

To be extended by the various adapters such as Slack, IRC and Lets Chat

## Configuration Variables  

- `HUBOT_GRAFANA_HOST` - Host for your Grafana 2.0 install, e.g. 'http://play.grafana.org'
- `HUBOT_GRAFANA_API_KEY` - API key for a particular user

### Example:  

		export HUBOT_GRAFANA_HOST=http://play.grafana.org
		export HUBOT_GRAFANA_API_KEY=abcd01234deadbeef01234


## Hubot integrations

Grafana - https://github.com/stephenyeargin/hubot-grafana
Jenkins - __to be added__
