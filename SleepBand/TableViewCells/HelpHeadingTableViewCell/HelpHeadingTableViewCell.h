//
//  HelpHeadingTableViewCell.h
//  SleepBand
//
//  Created by Aamir Shehzad on 30/12/2022.
//  Copyright © 2022 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HelpHeadingTableViewCell : UITableViewCell

@property(strong,nonatomic)IBOutlet UIView *backgroundMainView;
@property(strong,nonatomic)IBOutlet UILabel *labelHeading;

@end

NS_ASSUME_NONNULL_END
