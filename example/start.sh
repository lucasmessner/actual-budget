#!/usr/bin/env bash

# Verzeichnis für persistente Daten erstellen
mkdir -p /config/actual_budget/data

# Actual Budget starten
./actual-budget --data-dir /config/actual_budget/data --port 3000
