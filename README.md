# NestJS-docker

## リポジトリの目的
1. NestJSの環境をdockerで作りたかった
1. dockerをすこしだけ触りたい
1. Nest+Prismaを使った基本的なCRUDまでは学習したかった

## 始め方
```
git clone このリポジトリ
cd NestJS-docker
make init
make dev
open localhost:3000 (結構時間おいてから実行してくれな)
```

## migration方法

環境変数(.env)を設定してから使う
```
DATABASE_URL="mysql://user:secret@mysql:3306/develop"
```

基本的には「docker-compose exec nest yarn prisma 〇〇」 でなんとかなる


※prismaについて [prisma + nestjs](https://docs.nestjs.com/recipes/prisma)

## 入ってるパッケージ
### yarn
 - @nestjs/typeorm typeorm mysql
 - @nestjs/config
 - class-validator class-transformer
 - prisma