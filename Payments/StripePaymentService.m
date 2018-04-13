//
//  StripePaymentService.m
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger) number {
    NSLog(@"Stripe processed amount %lu", number);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
