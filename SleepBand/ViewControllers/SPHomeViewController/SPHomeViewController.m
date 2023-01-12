//
//  SPHomeViewController.m
//  SleepBand
//
//  Created by Aamir Shehzad on 29/12/2022.
//  Copyright © 2022 admin. All rights reserved.
//

#import "SPHomeViewController.h"
#import "SearchDeviceViewController.h"
#import "AppDelegate.h"

@interface SPHomeViewController ()

@property(nonatomic, retain) IBOutlet UIView *initialView;
@property(nonatomic, retain) IBOutlet UIView *mainView;
@property(nonatomic, retain) IBOutlet UIButton *btnStartMonitor;

@property (strong,nonatomic)BlueToothManager *manager;
@property (assign,nonatomic)BOOL isOpenHrRrNotify;
@property (strong,nonatomic)NSDate * manualStartDate;
@end

@implementation SPHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Other methods

-(void)setUpView {
    [self.btnStartMonitor setTitle:NSLocalizedString(@"SMVC_StartSleep", nil) forState:UIControlStateNormal];
    [self.btnStartMonitor setTitle:NSLocalizedString(@"SMVC_FinishSleep", nil) forState:UIControlStateSelected];
}

-(BlueToothManager *)manager {
    if (_manager == nil)
    {
        _manager = [BlueToothManager shareIsnstance];
    }
    return _manager;
}

-(void)sleep {
    WS(weakSelf);
    if(self.manager.isConnect)
    {
        NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
        if (!self.btnStartMonitor.selected)
        {
            
            NSLog(@"Click Start");
            self.isOpenHrRrNotify = YES;
            [defaults setBool:self.isOpenHrRrNotify forKey:@"isOpenHrRrNotify"];
            [defaults synchronize];
            [self.manager openRealTimeHrRrNotify];//打开
            
            self.btnStartMonitor.selected = YES;
//            self.alertLabel.hidden = NO;
            self.manualStartDate = [NSDate date];
//            [self addSleepAnimation];
            
            
        }else
        {
            NSLog(@"Click Finish -> Jump to the report page");
            self.isOpenHrRrNotify = NO;
            [defaults setBool:self.isOpenHrRrNotify forKey:@"isOpenHrRrNotify"];
            [defaults synchronize];
            [self.manager closeRealTimeHrRrNotify];//关闭
           
           // self.heartRateLabel.text = @"-";
           // self.respiratoryRateLabel.text = @"-";
            
//            [self removeSleepAnimation];
            self.btnStartMonitor.selected = NO;
//            if (!self.autoSleepMonitor) {
//                self.alertLabel.hidden = YES;
//            }
//            self.manualEndDate = [NSDate date];
//            NSTimeInterval time = [self.manualStartDate timeIntervalSinceDate:self.manualEndDate];
//            int hours = ((int)time)%(3600*24)/3600;
            
            //计算开始跟结束跨度，大于24小时不生成报告
//            if (hours < 24)
//            {
//
////同步数据
//#if 0
//                ManualSleepReportViewController *manual = [[ManualSleepReportViewController alloc]init];
//                manual.manualStartDate = self.manualStartDate;
//                manual.manualEndDate = self.manualEndDate;
//                [self tabBarViewHidden];
//                [self.navigationController pushViewController:manual animated:YES];
//#endif
//             }
            //点击结束监测后，跳转到报告页面
            NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
            [defaults boolForKey:@"isHaveNewDataForPushToReport"];
            //判断是否有新数据
            if ([defaults boolForKey:@"isHaveNewDataForPushToReport"]) {
                UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"SMVC_HaveNewSleepData", nil) message:nil preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *ok = [UIAlertAction actionWithTitle:NSLocalizedString(@"SMVC_Look", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
                    [delegate setRootViewControllerForReport];
                }];
                [actionSheet addAction:ok];
                UIAlertAction *cancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"Cancel", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                [actionSheet addAction:cancel];
                [weakSelf presentViewController:actionSheet animated:YES completion:nil];
                
            }
            
            
        }
        
    }else{
        
        if (!self.btnStartMonitor.selected)
        {
            [SVProgressHUD showInfoWithStatus:NSLocalizedString(@"BTM_DeviceNoConnect", nil)];
            [SVProgressHUD dismissWithDelay:kDismissWithDelayTime];
            
        }else
        {
            UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"BTM_DeviceNoConnect", nil) message:nil preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *cancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"SMVC_FinishSleep", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                
                self.btnStartMonitor.selected = NO;
//                if (!weakSelf.autoSleepMonitor) {
//                    weakSelf.alertLabel.hidden = YES;
//                }
            }];
            
            UIAlertAction *ok = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            [actionSheet addAction:cancel];
            [actionSheet addAction:ok];
            [self presentViewController:actionSheet animated:YES completion:nil];
            
        }
        
    }
}

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
//    SearchDeviceViewController *search = [[SearchDeviceViewController alloc]initWithNibName:@"SearchDeviceViewController" bundle: [NSBundle mainBundle]];
//    search.isPushWithLogin = YES;
//    [self.navigationController pushViewController:search animated:YES];
    
    [self sleep];
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
