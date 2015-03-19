//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by tim on 3/18/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>



@end

@interface HUDViewController : UIViewController

- (IBAction)lionsButtonTapped:(UIButton *)sender;
- (IBAction)tigersButtonTapped:(UIButton *)sender;

@end
