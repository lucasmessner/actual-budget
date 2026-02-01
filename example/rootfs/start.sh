#!/usr/bin/env bash

# Verzeichnisse erstellen
mkdir -p /config/actual_budget/data

# Start Actual Budget
exec actual-budget --data-dir /config/actual_budget/data --port 3000
