//
//  ViewController.m
//  LionsAndTigers
//
//  Created by tim on 3/18/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"

@interface RootViewController () <TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraint;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    //need to get TOP VC pointer
    //TOP VC.delegate = self;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma TopDelegate Protocols
-(void) topRevealButtonTapped:(UIButton *)button
{

    NSLog(@"calling topDelegate in ROOT ======%f",self.leftConstraint.constant );


    //self.leftConstraint.constant = 300.0;
    if (self.leftConstraint.constant == -16.0) {

        self.leftConstraint.constant = 150.0;
        self.rightConstraint.constant = -165.0;
    }
    else {
        self.leftConstraint.constant = -16.0;
        self.rightConstraint.constant = -16.0;


    }


}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TopViewController *topVC;
    UINavigationController  *NC = segue.destinationViewController;

    NSArray *array = NC.childViewControllers;

    for(NSArray *object in array)
    {
        if ([object isKindOfClass:[TopViewController class]]){
            topVC = (TopViewController *) object;
            break;
        }
    }

    topVC.delegate = self;
  //  [self topRevealButtonTapped:sender];

}






@end
