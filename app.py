from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "<p>Hello World! This is my web app</p>"