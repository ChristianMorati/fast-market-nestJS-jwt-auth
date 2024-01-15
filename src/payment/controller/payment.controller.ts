import { Intent, PaymentService } from '../service/payment.service';
import { Response } from 'express';
import { Body, Controller, HttpStatus, Post, Res } from '@nestjs/common';

@Controller('payment')
export class PaymentController {
    constructor(
        private readonly paymentService: PaymentService
    ) { }

    @Post('intent')
    async makeIntent(@Body() intent: Intent, @Res() res: Response) {
        let paymentIntent;
        try {
            paymentIntent = await this.paymentService.makeIntent({ amount: intent.amount })
            res.status(HttpStatus.OK).json(paymentIntent).send();
        } catch (error) {
            res.status(HttpStatus.BAD_REQUEST).json(error);
        }
    }
}
