//
//  ZAJudgeView.m
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ZAJudgeView.h"

@implementation ZAJudgeView


- (IBAction)buttonSelected:(UIButton *)btn{
    if ((btn == _buttonTrue && _buttonTrue.selected) || (btn == _buttonFalse && _buttonFalse.selected)) {
        return;
    }
    _buttonTrue.selected = !_buttonTrue.selected;
    _buttonFalse.selected = !_buttonFalse.selected;
    
    _valueTrueFalse = _buttonTrue.selected;
    
    if (_blockReturn) {
        _blockReturn(@(_valueTrueFalse));
    }
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

@end
