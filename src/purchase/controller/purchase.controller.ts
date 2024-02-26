import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { Public } from 'src/auth/guard/auth-guard';
import { PurchaseService } from '../service/purchase.service';

@Controller('purchase')
export class PurchaseController {
    constructor(
        private purchaseService: PurchaseService
    ) { }
    @Public()
    @Get()
    async findAll() {
        return this.purchaseService.findAll();
    }

    // @Post()
    // createOrder(@Body() order: CreateOrderDto ){
    //     return this.purchaseService.createOrder(order)
    // }
}
