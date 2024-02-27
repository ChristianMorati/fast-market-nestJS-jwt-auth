import { IsDate, IsPositive, IsString } from "class-validator";
import { User } from "src/user/entity/user.entity";
import { Column, Entity, JoinColumn, JoinTable, OneToMany, OneToOne } from "typeorm";
import { BaseEntity } from "src/base_entity/base.entity";
import { PurchaseItem } from "./purchase-items.entity";


@Entity()
export class Purchase extends BaseEntity {
    @IsPositive()
    @Column()
    total: number;

    @IsString()
    @Column()
    payment_method: string;

    @IsDate()
    @Column({ default: () => 'CURRENT_TIMESTAMP' })
    createdAt: Date;

    @Column({ default: null })
    updatedAt: Date;
    
    @OneToOne(() => User)
    @JoinColumn()
    user: User
    
    @OneToMany(() => PurchaseItem, purchaseItem => purchaseItem.purchase_id)
    @JoinTable()
    items: PurchaseItem[];
}
