import { Body, Controller, Post, Put, Req, UnauthorizedException } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { AuthDto } from '../dto/auth.dto';
import { CreateUserDto } from 'src/user/dto/create-user.dto';
import { AuthService } from '../service/auth.service';
import { Public } from '../guard/auth-guard';


@ApiTags('Auth')
@Controller('auth')
export class AuthController {
    constructor(
        private authService: AuthService,
    ) { }

    @Public()
    @Post('login')
    singin(@Body() authDto: AuthDto) {
        const AT = this.authService.login(
            authDto.email,
            authDto.password
        )
        return AT;
    }

    @Public()
    @Post('signup')
    signUp(@Body() createUserDto: CreateUserDto) {
        return this.authService.signUp(createUserDto);
    }

    @Public()
    @Put('refresh')
    async refresh(@Body() body: any) {
        var newAcessToken;
        console.error(body.token)
        try {
            newAcessToken = await this.authService.validateRefreshToken(body.token);
        } catch (e) {
            throw new UnauthorizedException();
        }
        return newAcessToken;
    }
}
