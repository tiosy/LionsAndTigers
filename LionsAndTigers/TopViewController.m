//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by tim on 3/18/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)topButton:(id)sender {

    NSLog(@"calling topBUTTON  in TOP");
    [self.delegate topRevealButtonTapped:sender];
}


@end
