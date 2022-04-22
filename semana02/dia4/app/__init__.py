from flask import Flask

#imports blueprints
from .admin import admin
from .portafolio import portafolio

def create_app():
    app = Flask(__name__)

    app.register_blueprint(admin)
    app.register_blueprint(portafolio)

    return app

