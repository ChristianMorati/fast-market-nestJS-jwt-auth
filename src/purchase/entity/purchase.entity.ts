import { IsDate, IsPositive, IsString } from "class-validator";
import { User } from "src/user/entity/user.entity";
import { Column, Entity, JoinColumn, JoinTable, ManyToMany, ManyToOne, OneToOne } from "typeorm";
import { BaseEntity } from "src/base_entity/base.entity";
import { Product } from "src/products/entity/product.entity";



@Entity()
export class Purchase extends BaseEntity {
    @OneToOne(() => User)
    @JoinColumn()
    user: User

    @ManyToMany(() => Product)
    @JoinTable()
    items: Product[];
  
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
}