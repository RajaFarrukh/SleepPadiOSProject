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
#import "SleepAdviceViewController.h"
#import "MyDeviceViewController.h"
#import "TermsAndConditionViewController.h"
#import "UniversalTableViewCell.h"
#import "UserModel.h"
#import "BoundViewController.h"
#import "ResetPasswordViewController.h"
#import "AppDelegate.h"
#import "AccountInfoTableViewCell.h"

@interface SettingsViewController ()

@property (strong,nonatomic)AlertView *alertView;

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
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SleepAdviceViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"SleepAdviceViewController"];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
 // Method: onBtnDevice
 // Desc: Action method for get device Info
 */
- (IBAction)onBtnDevice:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MyDeviceViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"MyDeviceViewController"];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
 // Method: onBtnTermsAndConditions
 // Desc: Action method for Terms & Conditions
 */
- (IBAction)onBtnTermsAndConditions:(id)sender {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TermsAndConditionViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"TermsAndConditionViewController"];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
 // Method: onBtnTermonBtnLogoutsAndConditions
 // Desc: Action method for logout
 */
- (IBAction)onBtnLogout:(id)sender {
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:NSLocalizedString(@"AVC_Logout", nil)
                                 message:@"Are You Sure Want to Logout!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Yes"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
        //Handle your yes please button action here
        BlueToothManager *manager = [BlueToothManager shareIsnstance];
        [manager stopScan];
        if(manager.isConnect){
            [manager manualCancelConnect];
        }
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:@"0" forKey:@"isLogin"];
        [defaults synchronize];
        AppDelegate *delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
        [delegate setRootViewControllerForLogin];
        
    }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
        //Handle no, thanks button
    }];
    
    //Add your buttons to alert controller
    
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end

