FROM docker/sandbox-templates:opencode-docker-0.4.0

USER root

RUN mkdir -p /home/agent/.config/opencode
COPY opencode.json /home/agent/.config/opencode/opencode.json
RUN chown -R agent:agent /home/agent/.config/opencode

# Fallback placeholder.
ENV OLLAMA_API_KEY="proxy-managed"

USER agent