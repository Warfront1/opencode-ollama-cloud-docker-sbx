# For Developers of opencode-ollama-cloud-sbx

## Developer Setup

- [Docker Desktop](https://www.docker.com/get-started/) installed
- [Docker Sandbox](https://docs.docker.com/ai/sandboxes/) installed
- An [Ollama Cloud](https://signin.ollama.com/) account

## Setup

Reset and configure your sandbox environment:
```shell
# The following will delete/reset practically everything related to your Docker Sandboxes.
# Warning: Read the warning message closely before entering `y` to continue with the reset!
sbx reset
# The following command will interactively prompt you for your Ollama Cloud API key
sbx secret set-custom -g --host ollama.com --host *.ollama.com --env OLLAMA_API_KEY
```
Build and test the sandbox
```shell
docker build -t opencode-ollama-cloud-sandbox:v2 .
docker image save opencode-ollama-cloud-sandbox:v2 -o opencode-ollama-cloud-sandbox.tar
sbx template load opencode-ollama-cloud-sandbox.tar
sbx policy allow network "ollama.com,*.ollama.com"
sbx run opencode --template opencode-ollama-cloud-sandbox:v2
```