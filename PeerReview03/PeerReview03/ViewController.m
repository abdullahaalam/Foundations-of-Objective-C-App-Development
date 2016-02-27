//
//  ViewController.m
//  PeerReview03
//
//  Created by Abdullah Alam on 2/16/16.
//  Copyright (c) 2016 Abdullah Alam. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

#import <QuartzCore/QuartzCore.h>

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest * req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController


- (IBAction)buttonTapped:(id)sender {
    self.convertButton.enabled = NO;
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
    
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies {
    self.convertButton.enabled = YES;
    
    // U.S. Dollar to Euro - Currency Exchange Rates
    double inputValue = [self.inputField.text floatValue];
    double euroValue = inputValue * currencies.EUR;
    NSString *temp = [NSString stringWithFormat:@"%.2f", euroValue];
    self.currencyA.text = temp;
    
    // U.S. Dollar to Japanese Yen - Currency Exchange Rates
    double yenValue = inputValue * currencies.JPY;
    NSString *temp1 = [NSString stringWithFormat:@"%.2f", yenValue];
    self.currencyB.text = temp1;
    
    // U.S. Dollar to British Pound - Currency Exchange Rates
    double poundValue = inputValue * currencies.GBP;
    NSString *temp2 = [NSString stringWithFormat:@"%.2f", poundValue];
    self.currencyC.text = temp2;
    
}

@end
