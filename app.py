import subprocess

from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    label = subprocess.check_output(["git", "describe", "--always"]).strip().decode()
    return f"The current git commit hash: {label}"
