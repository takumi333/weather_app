# ベースイメージの指定
FROM node:20

# 作業ディレクトリの設定
WORKDIR /myapp

# package.jsonとpackage-lock.jsonをコピーし、依存関係をインストール
COPY package*.json ./
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# Next.jsアプリケーションのビルド
RUN npm run build

CMD ["npm", "run", "dev"]



