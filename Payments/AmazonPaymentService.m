//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger) number {
    NSLog(@"Amazon processed amount %lu", number);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
