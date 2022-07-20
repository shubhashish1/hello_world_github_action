"""
Here we are creating a basic flask script to check the github action
"""

from flask import Flask
import os

app = Flask(__name__)

@app.route('/',methods = ['GET','POST'])
def index():
    return "hello world"

if __name__ == "__main__":
    app.run()