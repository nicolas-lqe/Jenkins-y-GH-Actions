#App de ejemplo para desplegar en Jenkins. Se usa Flask por lo sencillo y minimalista."
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "¡Hola! Este es mi pipeline de CI/CD con Jenkins y Docker."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)