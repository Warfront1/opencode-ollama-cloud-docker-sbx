# opencode-ollama-cloud-docker-sbx

A custom [Docker Sandbox](https://docs.docker.com/ai/sandboxes/) template that securely and easily runs [OpenCode](https://opencode.ai) with [Ollama Cloud](https://ollama.com) as the LLM provider.

## Prerequisites

- [Docker Sandbox](https://docs.docker.com/ai/sandboxes/) installed
- An [Ollama Cloud](https://signin.ollama.com/) account

## Setup

#### 1. Store your Ollama Cloud API key (one-time)

Get your API key from [Ollama Cloud](https://ollama.com/settings/keys)
```
sbx secret set-custom -g --host ollama.com --host *.ollama.com --env OLLAMA_API_KEY
```
You'll be prompted to paste your API key interactively — the key never touches your shell history or command line.

#### 2. Run the Agent

```
sbx run opencode --template warfront1ococds/opencode-ollama-cloud-docker-sbx:latest
```

## Want to contribute or modify this template?
See [DEVELOPERS.md](DEVELOPERS.md).