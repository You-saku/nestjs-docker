import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaService } from './prisma.service'; // prismaで書き換え
import { UserModule } from './user/user.module';

@Module({
  imports: [
    TypeOrmModule.forRoot(),
    UserModule,
  ],
  controllers: [AppController],
  providers: [AppService, PrismaService], // prismaで書き換え
})
export class AppModule {}
