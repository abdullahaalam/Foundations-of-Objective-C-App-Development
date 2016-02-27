//
//  ViewController.m
//  UnitConversionApp
//
//  Created by Abdullah Alam on 2/15/16.
//  Copyright © 2016 Abdullah Alam. All rights reserved.
//

#import "ViewController.h"

double convertInchesToFeet(double inches) {
    double feet;
    feet = inches / 12;
    return feet;
}

double convertInchesToMeters(double inches) {
    double meters;
    meters = inches * 0.0254;
    return meters;
}

double convertInchesToMiles(double inches) {
    double miles;
    miles = inches / 63360;
    return miles;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)calculateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    //[buf appendString: @"clicked"];
    double userInput = [self.inputField.text doubleValue];
    if(self.segmentController.selectedSegmentIndex == 0) {
        //[buf appendString: @"Feet"];
        double feet = convertInchesToFeet(userInput);
        [buf appendString:[@(feet) stringValue]];
    }
    else if (self.segmentController.selectedSegmentIndex == 1) {
        //[buf appendString: @"Meters"];
        double meters = convertInchesToMeters(userInput);
        [buf appendString:[@(meters) stringValue]];
    }
    else {
        double miles = convertInchesToMiles(userInput);
        [buf appendString:[@(miles) stringValue]];
        //[buf appendString: @"Miles"];
    
    }
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
