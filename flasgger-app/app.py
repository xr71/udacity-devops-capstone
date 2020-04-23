from flask import Flask, jsonify
from flasgger import Swagger

app = Flask(__name__)
Swagger(app)

@app.route("/")
def index():
    return "This is a simple Flask + Swagger app"


@app.route('/api/greet/<name>')
@app.route('/api/greet/')
def greet(name="World"):
    """
    This is a demo Flask + Swagger API running inside Docker. It takes in one optional argument in the url and returns the message 'Hello, {arg}'
    Call this api by passing in a name at the end of the url or simply leave that part of the url blank and it will default to 'World'
    ---
    tags:
      - Hello World Greet Message API
    parameters:
      - name: name
        in: path
        type: string
        required: false
        description: Enter your name here in the url
    responses:
      200:
        description: A greeting message that says 'Hello, {World}'
        schema:
          id: greet
          properties:
            message:
              type: string
              description: Returns a JSON of the greeting message
              default: Hello, World
    """

    return jsonify({
        "message": "Hello, " + name
    })

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
