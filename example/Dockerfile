# Dockerfile für Raspberry Pi 4 (armv7/arm64)
FROM python:3.12-slim

# Setze Arbeitsverzeichnis
WORKDIR /app

# Abhängigkeiten installieren
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Actual Budget installieren
RUN pip install --no-cache-dir actual-budget

# Füge Startskript hinzu
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Port freigeben (Actual Budget standardmäßig 3000)
EXPOSE 3000

# Container-Start
CMD ["/start.sh"]
