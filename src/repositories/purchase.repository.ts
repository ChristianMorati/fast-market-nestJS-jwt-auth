import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Purchase } from "src/purchase/entity/purchase.entity";
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
                items: { product: true },
            }, where: { user: { id: 14 } }
        });
        return purchases;
    }

    // createOrder(order: CreateOrderDto) {
    //     return this.purchaseRepository.create(order);
    // }
}