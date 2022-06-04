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
※[prismaをnestで動かすときに](https://www.prisma.io/nestjs)

## 簡単なCRUD処理
```
1.migrationをしておく
2.docker-compose exec nest nest g resource
3.migrationで作ったmodelの名前を解答
4.APIの種類を選択
5.Yesで解答
```

そうすると「controller」とか「service」ができてModuleのimportとかされる

## バリデーション追加
```
[参考] https://zenn.dev/waddy/scraps/e9b9e825d2f6b7
yarn add class-validator class-transformer をしろ
```

## 入ってるパッケージ
### yarn
 - @nestjs/typeorm typeorm mysql
 - @nestjs/config
 - class-validator class-transformer
 - prisma