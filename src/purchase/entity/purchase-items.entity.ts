import { BaseEntity } from "src/base_entity/base.entity"
import { Product } from "src/products/entity/product.entity";
import { Column, Entity, JoinColumn, JoinTable, ManyToOne, OneToOne } from "typeorm"
import { Purchase } from "./purchase.entity";

@Entity()
export class PurchaseItem extends BaseEntity {
    @ManyToOne(() => Purchase, purchase => purchase.items)
    purchase: number;

    @ManyToOne(() => Product)
    product: Product;

    @Column()
    qtt_items: number
}