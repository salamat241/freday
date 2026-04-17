FROM python:3.12-slim
RUN pip install matrix-synapse
WORKDIR /app
COPY freday-server/ .
EXPOSE 8008
ENV PORT=8008
CMD ["python", "-m", "synapse.app.homeserver", "--config-path", "homeserver.yaml"]
