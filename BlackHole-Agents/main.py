from flask import Flask,request,jsonify,make_response
from utils import CalculateMD5

app = Flask(__name__)

@app.route(rule="/api/predict",methods=["POST"])
def predictData():
    if CalculateMD5.calculateMd5(request.headers.get("x-api-key")) != "":
        return make_response("Invalid API Key", 403)
    