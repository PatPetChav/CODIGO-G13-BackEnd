from flask import Blueprint

admin = Blueprint('portafolio',__name__,url_prefix='/')

from . import views