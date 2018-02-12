//
//  UIButton+ImageTitle.h
//  coupon
//
//  Created by lhq on 2017/11/22.
//  Copyright © 2017年 Roylee. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, BTButtonStyle) {
    BTButtonStyleImageTop,          // image top，label bottom
    BTButtonStyleImageLeft,         // image left，label right
    BTButtonStyleImageBottom,       // image bottom，label top
    BTButtonStyleImageRight         // image right，label left
};

@interface UIButton (ImageTitle)

/**
 set button style and space with image-title

 @param style button style
 @param space image-title space
 */
- (void)setBTButtonStyle:(BTButtonStyle)style
                 space:(CGFloat)space;
@end
