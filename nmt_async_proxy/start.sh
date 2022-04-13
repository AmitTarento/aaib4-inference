#!/bin/bash
# python3 app.py
#gunicorn -w 2 --threads 500 -b 0.0.0.0:5001 "app:create_app_with_gunicorn()"
gunicorn -w 2 --worker-class uvicorn.workers.UvicornWorker -b 0.0.0.0:5001 fastapi_app:app