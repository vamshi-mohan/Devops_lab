# 1. Create directory and enter it
mkdir myapp && cd myapp

# 2. Create app.py
cat << EOF > app.py
from flask import Flask
app = Flask(__name__)
@app.route("/")
def home():
    return "Hello from Dockerized Flask app!"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

# 3. Create requirements.txt
cat << EOF > requirements.txt
flask
EOF

# 4. Create Dockerfile
cat << EOF > Dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
EOF

# 5. Build the Docker image
echo "--- All files created. Building Docker image... ---"
docker build -t flask-docker-sample .

echo "--- Build finished. You can now run the container. ---"
