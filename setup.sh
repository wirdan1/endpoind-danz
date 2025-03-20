#!/bin/bash

echo "🚀 Memeriksa instalasi Node.js..."
if ! command -v node &> /dev/null; then
    echo "⚠️ Node.js belum terinstal. Silakan instal Node.js dari https://nodejs.org/"
    exit 1
fi

echo "📦 Menginstall dependency JSON Server dan CORS..."
npm install -g json-server cors

echo "📂 Mengecek database.json..."
if [ ! -f database.json ]; then
    echo '{
  "users": []
}' > database.json
    echo "✅ database.json telah dibuat!"
else
    echo "✅ database.json sudah ada!"
fi

echo "🚀 Menjalankan JSON Server di port 5000..."
json-server --watch database.json --port 5000 &
SERVER_PID=$!

echo "✅ Server berjalan di background! Tekan CTRL+C untuk berhenti."
wait $SERVER_PID