//
//  CCButton.h
//  Demo
//
//  Created by lhq on 2018/3/21.
//  Copyright © 2018年 lhq. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, CCButtonStyle) {
    CCButtonStyleImageLeft,     // image left,label right
    CCButtonStyleImageRight,    // image right，label left
    CCButtonStyleImageTop,      // image top，label bottom
    CCButtonStyleImageBottom,   // image bottom，label top
    
};

@interface CCButton : UIButton
@property (nonatomic, assign) CCButtonStyle buttonStyle; //The default is the same as the system
@property (nonatomic, assign) CGFloat space;             //The default is 0

- (instancetype)initWithFrame:(CGRect)frame buttonStyle:(CCButtonStyle)buttonStyle space:(CGFloat)space;
@end
