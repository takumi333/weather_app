# ベースイメージの指定
FROM ruby:3.3

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client vim

# 作業ディレクトリの設定
WORKDIR /myapp

# GemfileとGemfile.lockをコピーし、依存関係をインストール
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# アプリケーションのソースコードをコピー
COPY . .

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3002"]
