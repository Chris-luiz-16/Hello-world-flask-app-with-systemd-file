from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
  return "<h1><center> Hello World app! This is a flask application that can either run in systemd or in a docker container Version </center></h1>"

if __name__ == "__main__":
  app.run()
