import { Module } from '@nestjs/common';
import { UserService } from './user.service';
import { UserController } from './user.controller';
// prismaで書き換え
import { PrismaService } from './../prisma.service';

@Module({
  controllers: [UserController],
  // prismaで書き換え
  providers: [UserService, PrismaService],
})
export class UserModule {}
