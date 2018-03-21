//
//  ViewController.m
//  Demo
//
//  Created by lhq on 2018/2/12.
//  Copyright © 2018年 lhq. All rights reserved.
//

#import "ViewController.h"
#import "CCButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CCButton *btn = [[CCButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100) buttonStyle:CCButtonStyleImageTop space:10];
    [btn setTitle:@"文字" forState:UIControlStateNormal];
    [btn setTitle:@"选中态" forState:UIControlStateSelected];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnClick:(UIButton *)btn {
    btn.selected = !btn.selected;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
