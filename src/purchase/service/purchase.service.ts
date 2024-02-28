import { Injectable } from '@nestjs/common';
import { PurchaseRepository } from 'src/repositories/purchase.repository';

@Injectable()
export class PurchaseService {
    constructor(
        private purchaseRepository : PurchaseRepository
    ) {}

    findAll() {
        return this.purchaseRepository.findAll();
    }

    lastPurchase(userId: number) {
        return this.purchaseRepository.lastPurchase(userId);
    }

    // createOrder(order: CreateOrderDto) {
    //     return this.purchaseRepository.createOrder(order);
    // }
}
