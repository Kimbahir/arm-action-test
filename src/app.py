from flask import Flask
import os

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello world, Bahir"


@app.route("/env")
def env():
    try:
        return os.environ['DEMO_ENV_VAR']
    except Exception:
        return "Key not found :("


if __name__ == "__main__":
    app.run(host="0.0.0.0")
