import { BaseEntity } from "src/base_entity/base.entity";
import { Column, Entity } from "typeorm";


@Entity()
export class Product extends BaseEntity {
    @Column({ unique: true })
    code: string
    
    @Column()
    description: string

    @Column('text')
    url_img: string

    @Column()
    unit_price: number

    @Column({ nullable: true })
    kilogram_price: number

    @Column()
    units: number
}