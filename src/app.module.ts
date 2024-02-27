import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from './user/entity/user.entity';
import { UsersModule } from './user/user.module';
import { AuthModule } from './auth/auth.module';
import { ConfigModule } from '@nestjs/config';
import { Token } from './auth/entity/token.entity';
import { ProductsModule } from './products/products.module';
import { Product } from './products/entity/product.entity';
import { PaymentModule } from './payment/payment.module';

import { PurchaseModule } from './purchase/purchase.module';
import { Purchase } from './purchase/entity/purchase.entity';
import { PurchaseItem } from './purchase/entity/purchase-items.entity';


@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.HOST,
      port: parseInt(process.env.DB_PORT),
      username: process.env.DB_USER,
      password: process.env.DB_PASS,
      database: process.env.DB_NAME,
      entities: [User, Token, Product, Purchase, PurchaseItem],
      synchronize: true,
    }),
    UsersModule,
    AuthModule,
    ProductsModule,
    PaymentModule,
    PurchaseModule,
  ],
  controllers: [AppController],
  providers: [
    AppService,
  ],
})
export class AppModule { }
