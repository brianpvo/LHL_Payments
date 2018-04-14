//
//  ApplePaymentService.m
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService



-(void)processPaymentAmount:(NSInteger) number {
    NSLog(@"ApplePay processed amount %lu", number);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
