import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
// import { CreateOrderDto } from "src/purchase/dto/create-order.dto";
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
                items: true,
                user: true
            }
        });
        return purchases;
    }

    // createOrder(order: CreateOrderDto) {
    //     return this.purchaseRepository.create(order);
    // }
}