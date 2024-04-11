import { Injectable } from '@nestjs/common';

export type Intent = {
    amount: number,
}

@Injectable()
export class PaymentService {
    private readonly stripe = require('stripe')('sk_test_51OVM1qFEaryRg9iMz5MQtUFhOyvRlegV3KVtrRTwEBUrLiJL3hsZ3yRqNI4QzDh12FcQzVDInbpHlggtyHkTsJL900frFJWG30')
    constructor(
    ) { }

    async makeIntent(intent: Intent) {
        try {
            const paymentIntent = await this.stripe.paymentIntents.create({
                amount: intent.amount,
                currency: 'brl',
                automatic_payment_methods: {
                    enabled: true
                }
            });

            return { paymentIntent: paymentIntent.client_secret }
        } catch (error) {
            throw ({ "error": "An error was ocurred on make Intent Paynment!\n" + error.message })
        }
    }
}
