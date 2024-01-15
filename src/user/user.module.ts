import { Module } from '@nestjs/common';
import { UsersService } from './service/user.service';
import { UsersRepository } from 'src/repositories/users.repository';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from './entity/user.entity';
import { AuthService } from 'src/auth/service/auth.service';
import { JwtService } from '@nestjs/jwt';
import { TokensRepository } from 'src/repositories/tokens.repository';
import { Token } from 'src/auth/entity/token.entity';

@Module({
    imports: [TypeOrmModule.forFeature([User])],
    providers: [
        UsersService,
        UsersRepository,
    ],
    exports: [UsersRepository]
})
export class UsersModule { }
