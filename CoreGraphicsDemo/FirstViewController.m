//
//  FirstViewController.m
//  CoreGraphicsDemo
//
//  Created by toro宇 on 2018/7/25.
//  Copyright © 2018年 CodeYu. All rights reserved.
//

#import "FirstViewController.h"
#import "textView.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    textView *view = [[textView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
}























@end
