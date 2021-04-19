# Azure devops agent

👉 [Run a self-hosted agent in Docker](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#linux)

## Environment  variables

| Variable | Description |
| --- | --- |
| ` AZP_URL` | The URL of the Azure DevOps or Azure DevOps Server instance.  |
| ` AZP_TOKEN` | [Personal Access Token (PAT)](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=preview-page) with Agent Pools (read, manage) scope, created by a user who has permission to [configure agents](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues?view=azure-devops&tabs=yaml%2Cbrowser#creating-agent-pools), at `AZP_URL`. |
| ` AZP_AGENT_NAME` | Agent name (default value: the container hostname). |
| ` AZP_POOL` | Agent pool name (default value: `Default`). |
| ` AZP_WORK` | Work directory (default value: `_work`). |