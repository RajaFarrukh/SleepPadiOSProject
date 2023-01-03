//
//  TermsAndConditionViewController.m
//  SleepBand
//
//  Created by Aamir Shehzad on 02/01/2023.
//  Copyright © 2023 admin. All rights reserved.
//

#import "TermsAndConditionViewController.h"

@interface TermsAndConditionViewController ()

@end

@implementation TermsAndConditionViewController

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

-(void)cancelAccount {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Tip" message:@"Confirm to cancel your account, the account will be successfully cancelled within three days after the confirmation the account data will be completely deleted and cannot be restored! Perform this operation with caution." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"CANCEL" style:UIAlertActionStyleDefault  handler:^(UIAlertAction * action) {}];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"CONFIRM" style:UIAlertActionStyleDefault  handler:^(UIAlertAction * action) {}];
    
    [alert addAction:cancelAction];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

/*
 // Method: onBtnBack
 // Desc: Action method for back button
 */
- (IBAction)onBtnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

/*
 // Method: onBtnAccountCancelation
 // Desc: Action method for account cancelation button
 */
- (IBAction)onBtnAccountCancelation:(id)sender {
    [self cancelAccount];
}

/*
 // Method: onBtnUserServiceAgrements
 // Desc: Action method for user service agrements
 */
- (IBAction)onBtnUserServiceAgrements:(id)sender {
    NSURL* url = [[NSURL alloc] initWithString: @"https://www.sleeppad.in/terms-conditions/"];
    [[UIApplication sharedApplication] openURL: url];
}

@end
