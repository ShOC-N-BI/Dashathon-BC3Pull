FROM python:3.10-slim

# Install Jupyter tools
RUN pip install jupyter nbconvert papermill

WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy notebooks
COPY notebooks/ ./notebooks/

# Run notebook automatically when container starts
CMD ["papermill", "--log-output", "notebooks/bc3_weapons_tcp.ipynb", "/dev/null"]
