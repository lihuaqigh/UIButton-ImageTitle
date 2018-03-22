//
//  CCButton.m
//  Demo
//
//  Created by lhq on 2018/3/21.
//  Copyright © 2018年 lhq. All rights reserved.
//

#import "CCButton.h"

@implementation CCButton
- (instancetype)initWithFrame:(CGRect)frame buttonStyle:(CCButtonStyle)buttonStyle space:(CGFloat)space {
    if (self = [super initWithFrame:frame]) {
        self.buttonStyle = buttonStyle;
        self.space = space;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
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
    switch (_buttonStyle) {
        case CCButtonStyleImageTop: {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-_space*0.5, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-_space*0.5, 0);
        }
            break;
        case CCButtonStyleImageLeft: {
            imageEdgeInsets = UIEdgeInsetsMake(0, -_space*0.5, 0, _space*0.5);
            labelEdgeInsets = UIEdgeInsetsMake(0, _space*0.5, 0, -_space*0.5);
        }
            break;
        case CCButtonStyleImageBottom: {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-_space*0.5, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-_space*0.5, -imageWith, 0, 0);
        }
            break;
        case CCButtonStyleImageRight: {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+_space*0.5, 0, -labelWidth-_space*0.5);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-_space*0.5, 0, imageWith+_space*0.5);
        }
            break;
        default:
            break;
    }

    // NSLog(@"😋(%f-%f),(%f-%f)",labelWidth,labelHeight,imageWith,imageHeight);
    // set button style
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}

@end
