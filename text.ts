import { IsDate, IsPositive, IsString } from "class-validator"
import { BaseEntity } from "src/base_entity/base.entity"
import { Column, Entity, ManyToOne, OneToOne } from "typeorm"

@Entity()
export class User extends BaseEntity {
    @Column()
    name: string

    @Column({ unique: true })
    username: string

    @Column()
    password: string

    @Column({ unique: true, nullable: true })
    cpf: string
}

@Entity()
export class Product extends BaseEntity {
    @Column({ unique: true })
    code: string

    @Column()
    description: string

    @Column('text')
    url_img: string

    @Column({ type: 'float' })
    unit_price: number;
}

@Entity()
export class Purchase extends BaseEntity {
    @ManyToOne(() => User, user => user.id)
    user_id: number;
    
    @IsPositive()
    @Column()
    total: number;

    @IsString()
    @Column()
    payment_method: string;

    @IsDate()
    @Column({ default: () => 'CURRENT_TIMESTAMP' })
    createdAt: Date;
    
    @Column({ default: () => null })
    updatedAt: Date;
}

@Entity()
export class PurchaseItem extends BaseEntity {
    @ManyToOne(() => Purchase, purchase => purchase.id)
    purchase_id: Purchase

    @ManyToOne(() => User, user => user.id)
    user_id: User

    @ManyToOne(() => Product, product => product.id)
    product_id: Product
}