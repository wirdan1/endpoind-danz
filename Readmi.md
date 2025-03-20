#Install TERMUX

# 1️⃣ Install Node.js & NPM (jika belum terinstall)
apt update && apt install -y nodejs npm

# 2️⃣ Install JSON Server
npm install -g json-server

# 3️⃣ Jalankan JSON Server untuk menyimpan data pengguna
json-server --watch database.json --port 5000

#INSTALL PETRO
apt update && apt install -y nodejs npm
npm i -g json-server