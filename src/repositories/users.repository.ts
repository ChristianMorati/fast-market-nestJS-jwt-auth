import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from 'src/user/entity/user.entity';
import { Repository } from 'typeorm';


@Injectable()
export class UsersRepository {
    constructor(
        @InjectRepository(User)
        private usersRepository: Repository<User>,
    ) { }

    save(user: any): Promise<User | undefined> {
        return this.usersRepository.save(user);
    }

    findAll(): Promise<User[]> {
        return this.usersRepository.find();
    }

    findOne(id: number): Promise<User | null> {
        return this.usersRepository.findOneBy({ id });
    }

    findOneByUsername(username: string): Promise<User | null> {
        return this.usersRepository.findOneBy({ username });
    }

    async remove(id: number): Promise<void> {
        await this.usersRepository.delete(id);
    }
}