//
//  AppInfoViewController.m
//  SleepBand
//
//  Created by Aamir Shehzad on 03/01/2023.
//  Copyright © 2023 admin. All rights reserved.
//

#import "AppInfoViewController.h"
#import "WelcomePageViewController.h"

@interface AppInfoViewController ()

@end

@implementation AppInfoViewController

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

/*
 // Method: onBtnExit
 // Desc: Action method for account exit button
 */
- (IBAction)onBtnExit:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:@"false" forKey:@"isAgreedTerms"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    exit(0);
}

/*
 // Method: onBtnAgree
 // Desc: Action method for account agree button
 */
- (IBAction)onBtnAgree:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:@"true" forKey:@"isAgreedTerms"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    self.view.window.rootViewController = [[WelcomePageViewController alloc]initWithNibName:@"WelcomePageViewController" bundle:[NSBundle mainBundle]];
    [self.view.window makeKeyAndVisible];
}

@end
