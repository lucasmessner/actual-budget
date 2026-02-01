# Base Image Node.js für ARM64
FROM node:20-slim

# Arbeitsverzeichnis
WORKDIR /app

# Abhängigkeiten für Download und Entpacken
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

# Actual Budget Release herunterladen (angepasst für ARM64)
RUN curl -L -o actual-budget.zip https://github.com/actualbudget/actual-budget/releases/download/v1.2.3/actual-budget-linux-arm64.zip \
    && unzip actual-budget.zip -d /app \
    && rm actual-budget.zip

# Startskript kopieren
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Port freigeben
EXPOSE 3000

# Starten
CMD ["/start.sh"]
