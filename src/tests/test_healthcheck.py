from starlette.testclient import TestClient

from app.main import app

client = TestClient(app)

def test_healthcheck(test_app):
    response = test_app.get("/healthcheck")
    assert response.status_code == 200
    assert response.json() == {"running": True}

