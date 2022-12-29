//
//  SPHomeViewController.m
//  SleepBand
//
//  Created by Aamir Shehzad on 29/12/2022.
//  Copyright © 2022 admin. All rights reserved.
//

#import "SPHomeViewController.h"
#import "SearchDeviceViewController.h"

@interface SPHomeViewController ()

@property(nonatomic, retain) IBOutlet UIView *initialView;
@property(nonatomic, retain) IBOutlet UIView *mainView;

@end

@implementation SPHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - IBAction Methods

/*
 // Method: onbtnSetupAlaram
 // Desc: Action method for setup an alarm button
 */
- (IBAction)onbtnSetupAlaram:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AlarmClockMainViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"AlarmClockMainViewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
 // Method: onbtnStartMonitor
 // Desc: Action method for start monitor button
 */
- (IBAction)onbtnStartMonitor:(id)sender {
    SearchDeviceViewController *search = [[SearchDeviceViewController alloc]initWithNibName:@"SearchDeviceViewController" bundle: [NSBundle mainBundle]];
    search.isPushWithLogin = YES;
    [self.navigationController pushViewController:search animated:YES];
}

/*
 // Method: onBtnWatchDemo
 // Desc: Action method for watch demo button
 */
- (IBAction)onBtnWatchDemo:(id)sender {
    NSString *videoURL = @"youtube://www.youtube.com/watch?v=MRUqScOHbH4&feature=youtu.be";
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:videoURL]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:videoURL]];
    }
}


@end
