import { Purchase } from "src/purchase/entity/purchase.entity";
import { BaseEntity, Column, Entity, JoinTable, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class User extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number

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