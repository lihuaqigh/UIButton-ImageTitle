//
//  UIButton+ImageTitle.m
//  coupon
//
//  Created by lhq on 2017/11/22.
//  Copyright © 2017年 Roylee. All rights reserved.
//

#import "UIButton+ImageTitle.h"
@implementation UIButton (ImageTitle)

- (void)setBTButtonStyle:(BTButtonStyle)style
                   space:(CGFloat)space {
    
    // button imageEdgeInsets and labelEdgeInsets
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    // get imageView's width and height, and titleLabel's width and height
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
    // switch button style
    switch (style) {
        case BTButtonStyleImageTop: {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space*0.5, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space*0.5, 0);
        }
            break;
        case BTButtonStyleImageLeft: {
            imageEdgeInsets = UIEdgeInsetsMake(0, -space*0.5, 0, space*0.5);
            labelEdgeInsets = UIEdgeInsetsMake(0, space*0.5, 0, -space*0.5);
        }
            break;
        case BTButtonStyleImageBottom: {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space*0.5, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space*0.5, -imageWith, 0, 0);
        }
            break;
        case BTButtonStyleImageRight: {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space*0.5, 0, -labelWidth-space*0.5);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space*0.5, 0, imageWith+space*0.5);
        }
            break;
        default:
            break;
    }

    // set button style
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}

@end

