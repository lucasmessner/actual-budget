# Node.js Base Image für ARM64
FROM node:20-slim

# Arbeitsverzeichnis
WORKDIR /app

# Git installieren, um Repo zu klonen
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# Repo von Actual Budget klonen
RUN git clone https://github.com/actualbudget/actual-budget.git . 

# Node.js-Abhängigkeiten installieren
RUN npm ci --omit=dev

# Startskript kopieren
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Port freigeben
EXPOSE 3000

# Container-Start
CMD ["/start.sh"]
