#!/usr/bin/env bash

# Verzeichnis für Daten erstellen
mkdir -p /config/actual_budget/data

# Actual Budget starten
npm start -- --data-dir /config/actual_budget/data --port 3000
