import { Module } from '@nestjs/common';
import { PurchaseService } from './service/purchase.service';
import { PurchaseController } from './controller/purchase.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PurchaseRepository } from 'src/repositories/purchase.repository';
import { Purchase } from './entity/purchase.entity';
import { UsersRepository } from 'src/repositories/users.repository';
import { User } from 'src/user/entity/user.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Purchase, User]),
  ],
  providers: [
    PurchaseService,
    PurchaseRepository,
    UsersRepository
  ],
  controllers: [PurchaseController]
})
export class PurchaseModule { }
