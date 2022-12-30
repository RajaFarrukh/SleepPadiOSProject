//
//  SettingsViewController.m
//  SleepBand
//
//  Created by Aamir Shehzad on 30/12/2022.
//  Copyright © 2022 admin. All rights reserved.
//

#import "SettingsViewController.h"
#import "AccountViewController.h"
#import "HelpViewController.h"
#import "SleepMainViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

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
 // Method: onBtnUserInformation
 // Desc: Action method for setup an User information
 */
- (IBAction)onBtnUserInformation:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AccountViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"AccountViewController"];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
 // Method: onBtnHelp
 // Desc: Action method for help option
 */
- (IBAction)onBtnHelp:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HelpViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"HelpViewController"];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
 // Method: onBtnGetSleepConsultation
 // Desc: Action method for get sleep consulation option
 */
- (IBAction)onBtnGetSleepConsultation:(id)sender {
//    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    SleepMainViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"SleepMainViewController"];
//    [[self navigationController] setNavigationBarHidden:YES animated:YES];
//    [self.navigationController pushViewController:controller animated:YES];
}

@end
