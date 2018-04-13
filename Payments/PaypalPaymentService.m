//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger) number {
    NSLog(@"Paypal processed amount %lu", number);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
