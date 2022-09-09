# Azure devops agent

[![Licence](https://img.shields.io/github/license/rteixeirax/azure-devops-agent?label=Licence&logo=github)](https://github.com/ricardotx/azure-devops-agent/blob/main/LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/ricardotx/azure-devops-agent?logo=github&label=Release)](https://github.com/rteixeirax/azure-devops-agent/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/rteixeirax/azure-devops-agent?logo=docker&label=Docker%20pulls)](https://hub.docker.com/r/ricardotx/azure-devops-agent)
[![Deploy](https://github.com/rteixeirax/azure-devops-agent/actions/workflows/deploy.yml/badge.svg)](https://github.com/ricardotx/azure-devops-agent/actions/workflows/deploy.yml)

*Self-hosted agent for azure pipelines that runs `dotnet-sdk-6.0`, `aspnetcore-runtime-6.0` and `nodejs 16.x`.*

### Microsoft documentation

* [Run a self-hosted agent in Docker](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#linux)

### Docker-compose

````yaml
version: "3"
services:
  azure-devops-agent:
    container_name: azure-devops-agent
    image: rteixeirax/azure-devops-agent
    restart: unless-stopped
    environment:
      - AZP_URL=https://your.server.instance
      - AZP_TOKEN=your_access_token
      - AZP_AGENT_NAME=your_agent_name
      - AZP_POOL=Default
      - AZP_WORK=_work
````

### Docker cli

````
docker run -d \
  --name=azure-devops-agent \
  -e AZP_URL=https://your.server.instance \
  -e AZP_TOKEN=your_access_token \
  -e AZP_AGENT_NAME=your_agent_name \
  -e AZP_POOL=Default \
  -e AZP_WORK=_work \
  --restart unless-stopped \
  ricardotx/azure-devops-agent
````

## Environment  variables

| Variable | Description |
| --- | --- |
| ` AZP_URL` | The URL of the Azure DevOps or Azure DevOps Server instance.  |
| ` AZP_TOKEN` | [Personal Access Token (PAT)](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=preview-page) with Agent Pools (read, manage) scope, created by a user who has permission to [configure agents](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues?view=azure-devops&tabs=yaml%2Cbrowser#creating-agent-pools), at `AZP_URL`. |
| ` AZP_AGENT_NAME` | Agent name (default value: the container hostname). |
| ` AZP_POOL` | Agent pool name (default value: `Default`). |
| ` AZP_WORK` | Work directory (default value: `_work`). |
