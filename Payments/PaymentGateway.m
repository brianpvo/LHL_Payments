//
//  PaymentGateway.m
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)printProcess:(NSInteger)number {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:number];
    } else {
        NSLog(@"Apologies but your payment cannot be processed");
    }
}

@end
