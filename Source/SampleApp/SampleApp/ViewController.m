//
//  ViewController.m
//  SampleApp
//
//  Created by RAHUL CK on 11/4/16.
//  Copyright © 2016 Robosoft Technologies Pvt Ltd. All rights reserved.
//

#import "ViewController.h"
#import <AppMonitor/AppMonitor.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *appLauchCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *appSpentTimeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.appLauchCountLabel.text = [NSString stringWithFormat:@"%ld",(long)[[AppMonitor sharedSDK]getAppLaunchCount]];
       self.appSpentTimeLabel.text = [NSString stringWithFormat:@"%f",[[AppMonitor sharedSDK]getAppSpentTime]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateDetailClicked:(id)sender
{
    self.appLauchCountLabel.text = [NSString stringWithFormat:@"%ld",(long)[[AppMonitor sharedSDK]getAppLaunchCount]];
    self.appSpentTimeLabel.text = [NSString stringWithFormat:@"%f",[[AppMonitor sharedSDK]getAppSpentTime]];

}
- (IBAction)postEventClicked:(id)sender
{
    [[AppMonitor sharedSDK]postEvent:@"Test" withAttributes:@[@"arg1",@"arg2"]];
}

@end
