//
//  ZAJudgeView.h
//  ZAControl 判断题控件
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZABaseView.h"


@interface ZAJudgeView : ZABaseView

//顶部灰色描述
@property (weak, nonatomic) IBOutlet UILabel *labelDesc;

//大标题
@property (weak, nonatomic) IBOutlet UILabel *labelQuestionTitle;

//判断第一个按钮
@property (weak, nonatomic) IBOutlet UIButton *buttonTrue;

//判断第二个按钮
@property (weak, nonatomic) IBOutlet UIButton *buttonFalse;

//默认值
@property (assign, nonatomic) BOOL valueTrueFalse;


@property (copy, nonatomic) BlockReturn blockReturn;

@end
