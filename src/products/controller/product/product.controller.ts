import { Controller, Get, Param, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiTags } from '@nestjs/swagger';
import { Public } from 'src/auth/guard/auth-guard';
import { Product } from 'src/products/entity/product.entity';
import { ProductService } from 'src/products/service/product.service';

@ApiTags('Product')
@Controller('product')
export class ProductController {
    constructor(
        private productService: ProductService,
    ) { }

    @Get()
    findAll(): Promise<Product[] | undefined> {
        return this.productService.findAll();
    }

    @Get('/code/:code')
    findOne(@Param() params: any): Promise<Product | undefined> {
        return this.productService.findOneByCode(params.code)
    }
}
