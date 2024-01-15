import { ExecutionContext, Module } from '@nestjs/common';
import { AuthService } from './service/auth.service';
import { AuthController } from './controller/auth.controller';
import { JwtModule, JwtService } from '@nestjs/jwt';
import { UsersModule } from 'src/user/user.module';
import { UsersService } from 'src/user/service/user.service';
import { UsersRepository } from 'src/repositories/users.repository';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from 'src/user/entity/user.entity';
import { Token } from './entity/token.entity';
import { TokensRepository } from 'src/repositories/tokens.repository';

import { AuthGuard } from './guard/auth-guard';
import { APP_GUARD } from '@nestjs/core';
import { ConfigModule } from '@nestjs/config';


@Module({
    imports: [
        ConfigModule.forRoot(),
        TypeOrmModule.forFeature([User, Token]),
        UsersModule,
    ],
    providers: [

        UsersRepository,
        UsersService,
        TokensRepository,

        AuthService,
        JwtService,
        {
            provide: APP_GUARD,
            useClass: AuthGuard,
        },
    ],
    controllers: [AuthController],
})
export class AuthModule { }
