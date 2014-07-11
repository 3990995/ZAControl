//
//  ViewController.m
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ViewController.h"
#import "ZAControlManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *v = [ZAControlManager loadTextFieldValue:nil
                                     withPlaceholder:@"请输入昵称"
                                           withFrame:self.view.frame
                                     didBeginEditing:^{
                                         NSLog(@"didBeginEditing");
                                     }   returnBlock:^(NSString *value) { NSLog(@"value:%@",value);}
                                     ];
    [self.view addSubview:v];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
