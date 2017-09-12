//
//  ViewController.m
//  AnimateTest
//
//  Created by Steven on 2017/9/7.
//  Copyright © 2017年 Steven. All rights reserved.
//

#import "ViewController.h"
#import "BezierPathView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    BezierPathView *path = [[BezierPathView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [path setBackgroundColor:[UIColor.grayColor colorWithAlphaComponent:.6f]];
    path.layer.borderWidth = 1.f;
    path.layer.borderColor = [UIColor.redColor colorWithAlphaComponent:.5f].CGColor;
    [self.view addSubview:path];
    
    [path setCenter:CGPointMake(self.view.frame.size.width / 2 , self.view.frame.size.height / 2)];
}

@end
