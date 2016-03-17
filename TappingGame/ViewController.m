//
//  ViewController.m
//  TappingGame
//
//  Created by Ashikul Islam Tamal on 3/17/16.
//  Copyright © 2016 Ashikul Islam Tamal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    timeInt = 10;
    tapInt = 0;
    self.tapButtonOutlet.enabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButton:(id)sender {
    if(timeInt == 10){
        tapInt = 0;
        self.tapButtonOutlet.enabled = YES;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
    }
}

- (IBAction)tapButton:(id)sender {
    if(timeInt > 0){
        tapInt +=1;
        self.tapLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    }
    if(timeInt == 0){
        timeInt = 10;
        tapInt = 0;
        
        self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        self.tapLabel.text = [NSString stringWithFormat:@"%i", tapInt];
        
        self.tapButtonOutlet.enabled = NO;
    }
}

-(void)startCounter{
    timeInt -= 1;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    if(timeInt == 0){
        [timer invalidate];
    }
}
@end
