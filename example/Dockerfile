FROM node:20-slim

WORKDIR /app

# Abhängigkeiten installieren
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

# Actual Budget Release herunterladen
RUN curl -L -o actual-budget.zip https://github.com/actualbudget/actual-budget/releases/download/v1.2.3/actual-budget-linux-arm64.zip \
    && unzip actual-budget.zip -d /app \
    && rm actual-budget.zip

# Startskript kopieren
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 3000

CMD ["/start.sh"]
