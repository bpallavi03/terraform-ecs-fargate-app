from flask import Flask, jsonify
import os
import socket

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "status": "online",
        "message": "Welcome to your containerized app on AWS ECS Fargate!",
        "container_id": socket.gethostname(),
        "environment": os.environ.get("ENVIRONMENT", "local")
    })

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == '__main__':
    # Bind to 0.0.0.0 so the container is accessible externally
    app.run(host='0.0.0.0', port=5000)