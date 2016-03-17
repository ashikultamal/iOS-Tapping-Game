//
//  ViewController.h
//  TappingGame
//
//  Created by Ashikul Islam Tamal on 3/17/16.
//  Copyright © 2016 Ashikul Islam Tamal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    
    int timeInt;
    int tapInt;
}
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapButtonOutlet;

- (IBAction)startButton:(id)sender;
- (IBAction)tapButton:(id)sender;

@end

