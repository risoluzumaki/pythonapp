# Gunakan image Python resmi sebagai base
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt dulu kalau ada (lebih cepat build)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua kode aplikasi
COPY . .

# Set port yang akan dibuka container
EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["python", "app.py"]
