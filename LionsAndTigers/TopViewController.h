//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by tim on 3/18/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

@required
-(void) topRevealButtonTapped:(UIButton *) button;

@end

@interface TopViewController : UIViewController

@property id<TopDelegate> delegate;

@end
