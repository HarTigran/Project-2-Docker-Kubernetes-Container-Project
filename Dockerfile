FROM python:3.8-slim-buster

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . .

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
    
CMD [ "python", "main.py"]
