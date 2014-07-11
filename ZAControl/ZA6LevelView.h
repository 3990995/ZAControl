//
//  ZA6LevelView.h
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ZABaseView.h"

@interface ZA6LevelView : ZABaseView

//顶部灰色描述
@property (weak, nonatomic) IBOutlet UILabel *labelDesc;

//大标题
@property (weak, nonatomic) IBOutlet UILabel *labelQuestionTitle;


@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;


@property (copy, nonatomic) BlockReturn blockReturn;


@end
