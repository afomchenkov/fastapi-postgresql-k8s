#!/bin/sh

export APP_MODULE=${APP_MODULE-src.main:app}
export HOST=${HOST:-0.0.0.0}
export PORT=${PORT:-8001}

source venv/bin/activate

exec uvicorn --reload --host "$HOST" --port "$PORT" "$APP_MODULE"
# uvicorn app.main:app --reload --workers 1 --host 0.0.0.0 --port 8003