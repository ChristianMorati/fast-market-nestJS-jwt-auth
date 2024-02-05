import { Module } from '@nestjs/common';
import { UsersService } from './service/user.service';
import { UsersRepository } from 'src/repositories/users.repository';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from './entity/user.entity';

@Module({
    imports: [TypeOrmModule.forFeature([User])],
    providers: [
        UsersService,
        UsersRepository,
    ],
    exports: [UsersRepository]
})
export class UsersModule { }
