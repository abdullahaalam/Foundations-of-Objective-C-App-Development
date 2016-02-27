//
//  ViewController.m
//  PeerReview01
//
//  Created by Abdullah Alam on 2/12/16.
//  Copyright (c) 2016 Abdullah Alam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *theLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapped:(id)sender {
    self.theLabel.text = @"It worked!";
}

@end
