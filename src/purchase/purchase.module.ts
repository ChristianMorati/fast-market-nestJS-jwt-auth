import { Module } from '@nestjs/common';
import { PurchaseService } from './service/purchase.service';
import { PurchaseController } from './controller/purchase.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PurchaseRepository } from 'src/repositories/purchase.repository';
import { Purchase } from './entity/purchase.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Purchase]),
  ],
  providers: [
    PurchaseService,
    PurchaseRepository,
  ],
  controllers: [PurchaseController]
})
export class PurchaseModule { }
