from flask import render_template

from . import portafolio

@portafolio.route("/")

def home():
    return render_template('portafolio/home.html')