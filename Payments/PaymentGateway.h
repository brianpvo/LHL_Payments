//
//  PaymentGateway.h
//  Payments
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegator

-(void)processPaymentAmount:(NSInteger) number;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegator> delegate;

-(void)printProcess:(NSInteger) number;

@end
