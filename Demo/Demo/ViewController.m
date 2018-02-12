//
//  ViewController.m
//  Demo
//
//  Created by lhq on 2018/2/12.
//  Copyright © 2018年 lhq. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImageTitle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"文字" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    
    [btn setBTButtonStyle:BTButtonStyleImageTop space:10];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
