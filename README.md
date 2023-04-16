## FastApi PostgreSQL K8S test service

![fastapi-0.92.0-informational](https://img.shields.io/badge/fastapi-0.92.0-informational) [![CodeQL](https://github.com/KenMwaura1/Fast-Api-example/actions/workflows/codeql.yml/badge.svg)](https://github.com/KenMwaura1/Fast-Api-example/actions/workflows/codeql.yml)
[![Docker Compose Actions Workflow](https://github.com/KenMwaura1/Fast-Api-example/actions/workflows/docker-image.yml/badge.svg)](https://github.com/KenMwaura1/Fast-Api-example/actions/workflows/docker-image.yml)


## Run locally

1. Create a virtual environment
   `python3 -m venv venv`
2. Activate virtualenv
   `source venv/bin/activate`
   For zsh
   `source venv/bin/activate.zsh`
   For bash
   `source venv/bin/activate.bash`
3. Install the required packages from src
   `python -m pip install -r requirements.txt`
4. Start the app
   ```shell
   python main.py
   ```

   Start the app using Uvicorn
   ```shell
   uvicorn app.main:app --reload --workers 1 --host 0.0.0.0 --port 8002
   ```

5. Postgres Database should be running locally.
   Create `fastapi_test` database with user `**postgres**`.
   OR
   Change the DATABASE_URL variable in the **.env** file to reflect database settings (user:password/db)

The app should be started on: [notes](http://localhost:8002/notes)
Swagger docs should be running on: [docs](http://localhost:8002/docs)


## Run using Docker

1. Ensure [Docker](https://docs.docker.com/install/) is installed.

2. Ensure [Docker Compose](https://docs.docker.com/compose/install/) is installed.

3. Build images and spin up containers:
   `docker-compose up -d --build`


## License

[MIT](https://choosealicense.com/licenses/mit/)
