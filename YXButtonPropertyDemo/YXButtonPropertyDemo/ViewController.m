//
//  ViewController.m
//  YXButtonPropertyDemo
//
//  Created by shiqin on 2017/2/16.
//  Copyright © 2017年 mifo. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+YXExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //当有导航栏时设置导航栏左下方为坐标原点x:0,y:0
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self setupBackgroundStateButton];
    

    [self setupLayoutButton];

}

#pragma mark ----- 创建不同状态下的背景颜色按钮
- (void)setupBackgroundStateButton
{
    UIButton * colorBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    colorBtn.frame = CGRectMake(20, 50, self.view.frame.size.width - 40, 40);
    
    colorBtn.layer.cornerRadius = 15;
    
    colorBtn.clipsToBounds = YES;
    
    [colorBtn  setBackgroundColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [colorBtn setTitle:@"这是normal状态下的背景色" forState:UIControlStateNormal];
    
    [colorBtn setTitle:@"这是higlglight状态下的背景色" forState:UIControlStateHighlighted];
    
    colorBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [colorBtn setBackgroundColor:[[UIColor orangeColor] colorWithAlphaComponent:0.5] forState:UIControlStateHighlighted];
    
    [self.view addSubview:colorBtn];
}

#pragma mark ----- 创建间距和位置按钮
- (void)setupLayoutButton
{
    UIButton * goodBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    goodBtn.frame = CGRectMake(20, 140, 60, 85);
    
    [goodBtn setImage:[UIImage imageNamed:@"good"] forState:UIControlStateNormal];
    
    [goodBtn setTitle:@"上" forState:UIControlStateNormal];
    
    [goodBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    
    goodBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [goodBtn yx_layoutButtonWithEdgeInsetsStyle:YXButtonEdgeInsetsStyleTop imageTitleSpace:5.0f];
    
    
    [self.view addSubview:goodBtn];
    
    
    UIButton * rankBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    rankBtn.frame = CGRectMake(CGRectGetMaxX(goodBtn.frame)+10, 140, goodBtn.frame.size.height, goodBtn.frame.size.width);
    
    [rankBtn setImage:[UIImage imageNamed:@"rank"] forState:UIControlStateNormal];
    
    [rankBtn setTitle:@"左" forState:UIControlStateNormal];
    
    [rankBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    
    rankBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [rankBtn yx_layoutButtonWithEdgeInsetsStyle:YXButtonEdgeInsetsStyleLeft imageTitleSpace:5.0f];
    
    [self.view addSubview:rankBtn];
    
    
    UIButton * rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    rightBtn.frame = CGRectMake(CGRectGetMaxX(rankBtn.frame)+10, 140, goodBtn.frame.size.height, goodBtn.frame.size.width);
    
    [rightBtn setImage:[UIImage imageNamed:@"rank"] forState:UIControlStateNormal];
    
    [rightBtn setTitle:@"右" forState:UIControlStateNormal];
    
    [rightBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    
    rightBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [rightBtn yx_layoutButtonWithEdgeInsetsStyle:YXButtonEdgeInsetsStyleRight imageTitleSpace:5.0f];
    
    [self.view addSubview:rightBtn];
    
    UIButton * bottomBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    bottomBtn.frame = CGRectMake(CGRectGetMaxX(rightBtn.frame)+10, 140, goodBtn.frame.size.width, goodBtn.frame.size.height);
    
    [bottomBtn setImage:[UIImage imageNamed:@"rank"] forState:UIControlStateNormal];
    
    [bottomBtn setTitle:@"下" forState:UIControlStateNormal];
    
    [bottomBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    
    bottomBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [bottomBtn yx_layoutButtonWithEdgeInsetsStyle:YXButtonEdgeInsetsStyleBottom imageTitleSpace:5.0f];
    
    [self.view addSubview:bottomBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
