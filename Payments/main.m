//
//  main.m
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [[InputHandler alloc] init];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        AmazonPaymentService *amazonPayment = [[AmazonPaymentService alloc] init];
        PaypalPaymentService *paypalPayment = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripePayment = [[StripePaymentService alloc] init];
        ApplePaymentService *applePay = [[ApplePaymentService alloc] init];
        
        while (1) {
            NSInteger dollar = arc4random_uniform(901) + 100;
            NSLog(@"Thank you for shopping at Acme.com Your total today is $%li Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", dollar);
            
            // User Input
            NSString *input = [inputHandler parse];
            int inputVal = [input intValue];
            
            switch (inputVal) {
                case 1:
                    paymentGateway.delegate = paypalPayment;
                    break;
                case 2:
                    paymentGateway.delegate = stripePayment;
                    break;
                case 3:
                    paymentGateway.delegate = amazonPayment;
                    break;
                case 4:
                    paymentGateway.delegate = applePay;
                    break;
                default:
                    NSLog(@"Your input was invalid");
                    break;
            }
            [paymentGateway printProcess:dollar];
        }
    }
    return 0;
}
