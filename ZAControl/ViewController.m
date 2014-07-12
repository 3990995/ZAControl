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
    /*
    UIView *v = [ZAControlManager loadTextFieldValue:nil
                                     withPlaceholder:@"请输入昵称"
                                           withFrame:self.view.frame
                                     didBeginEditing:^{
                                         NSLog(@"didBeginEditing");
                                     }   returnBlock:^(NSString *value) { NSLog(@"value:%@",value);}
                                     ];
    */
    
    /*
    UIView *v = [ZAControlManager loadJudgeViewFrame:self.view.frame
                                            withDesc:@"首先根据目前的状态，回答以下问题。"
                                   withQuestionTitle:@"你觉得我是一个美女吗？"
                                 withTrueButtonTitle:@"是"
                                withFalseButtonTitle:@"否"
                                           withValue:YES
                                         blockReturn:^(id value) {
                                               NSLog(@"%@",[value boolValue] ? @"y":@"n");
                                           }];
     
     */
    
    UIView *v = [ZAControlManager loadZALevelViewType:LevelQuestionType7
                                            withFrame:self.view.frame
                                             withDesc:@"为了更好地为您找到对象，请告诉我们在一段幸福的婚姻关系中你认为以下特性的重要性如何？"
                                    withQuestionTitle:@"另一半能为我制造浪漫"
                                            withValue:@3
                                          blockReturn:^(id value) {
        NSLog(@"%@",value);
    }];
    [self.view addSubview:v];
    
}


@end
