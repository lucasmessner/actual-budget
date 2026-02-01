#!/usr/bin/env bash

mkdir -p /config/actual_budget/data

# Actual Budget starten
./actual-budget --data-dir /config/actual_budget/data --port 3000
