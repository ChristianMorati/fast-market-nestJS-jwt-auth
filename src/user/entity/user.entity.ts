import { BaseEntity } from "src/base_entity/base.entity";
import { Purchase } from "src/purchase/entity/purchase.entity";
import { Column, Entity, JoinTable, OneToMany } from "typeorm";

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

    @OneToMany(() => Purchase, purchase => purchase.user)
    @JoinTable()
    purchases: Purchase[];
}