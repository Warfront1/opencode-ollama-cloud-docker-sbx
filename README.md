# opencode-ollama-cloud-docker-sbx

A custom [Docker Sandbox](https://docs.docker.com/ai/sandboxes/) template that securely and easily runs [OpenCode](https://opencode.ai) with [Ollama Cloud](https://ollama.com) as the LLM provider.

## Prerequisites

- [Docker Sandbox](https://docs.docker.com/ai/sandboxes/) installed
- An [Ollama Cloud](https://signin.ollama.com/) account

## Setup

#### 1. Store your Ollama Cloud API key (one-time)

Get your API key from [Ollama Cloud](https://ollama.com/settings/keys)
```shell
# The following command will interactively prompt you for your Ollama Cloud API key
sbx secret set-custom -g --host ollama.com --host *.ollama.com --env OLLAMA_API_KEY
```

#### 2. Allow sbx access to Ollama Cloud (one-time)
```shell
sbx policy allow network "ollama.com,*.ollama.com"
```

#### 3. Run the Agent

```shell
sbx run opencode --template warfront1ococds/opencode-ollama-cloud-docker-sbx:latest
```

## Want to contribute or modify this template?
See [DEVELOPERS.md](DEVELOPERS.md).