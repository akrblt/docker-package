# Node 22'nin hafif bir sürümünü kullanıyoruz [cite: 96, 100]
FROM node:22-alpine

# Çalışma dizinini belirliyoruz [cite: 101]
WORKDIR /app

# Önce bağımlılıkları kopyalayıp yüklüyoruz [cite: 102]
COPY package.json ./
RUN npm install

# Diğer tüm dosyaları kopyalıyoruz [cite: 103]
COPY . .

# Uygulamanın çalışacağı portu açıyoruz [cite: 104]
EXPOSE 3000

# Uygulamayı başlatıyoruz [cite: 105]
CMD ["node", "index.js"]