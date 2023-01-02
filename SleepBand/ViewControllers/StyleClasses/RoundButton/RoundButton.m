//
//  RoundButton.m
//  SleepBand
//
//  Created by Aamir Shehzad on 02/01/2023.
//  Copyright © 2023 admin. All rights reserved.
//

#import "RoundButton.h"

@implementation RoundButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.layer.cornerRadius = 20.0;
    }
    return self;
}

@end
