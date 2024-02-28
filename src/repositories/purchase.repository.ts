import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Purchase } from "src/purchase/entity/purchase.entity";
import { User } from "src/user/entity/user.entity";
import { Repository } from "typeorm";

@Injectable()
export class PurchaseRepository {
    constructor(
        @InjectRepository(Purchase)
        private purchaseRepository: Repository<Purchase>,
    ) { }

    async findAll() {
        const purchases = await this.purchaseRepository.find({
            relations: {
                user: true,
                items: { product: true }
            },
            where: { user: { id: 14 } }
        });
        return purchases;
    }

    async lastPurchase(userId: number) {
        const purchases: Purchase[] = await this.purchaseRepository.find({
            relations: {
                user: true,
                items: { product: true }
            },
            where: { user: { id: userId } }
        });

        if (purchases.length === 0) {
            return {
                error: 'sem dados para este usuário'
            };
        }
        return purchases;
    }

    // createOrder(order: CreateOrderDto) {
    //     return this.purchaseRepository.create(order);
    // }
}