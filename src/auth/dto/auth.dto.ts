import { IsEmail, IsNumber, IsString, MinLength } from "class-validator"


export class AT {
    @IsString()
    sub: number

    @IsEmail()
    email: string

    @IsNumber()
    iat: number

    @IsNumber()
    exp: number
}

export class AuthDto {
    @IsEmail()
    email: string

    @IsString()
    @MinLength(8)
    password: string
}