import { Module } from '@nestjs/common';
import { ProductController } from './controller/product.controller';
import { ProductService } from './service/product.service';
import { Product } from './entity/product.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProductsRepository } from 'src/repositories/products.repository';

@Module({
    imports: [
        TypeOrmModule.forFeature([Product]),
    ],
    providers: [
        ProductService,
        ProductsRepository,
    ],
    controllers: [
        ProductController,
    ]
})
export class ProductsModule {}
