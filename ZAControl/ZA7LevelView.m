//
//  ZA6LevelView.m
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ZA7LevelView.h"

@implementation ZA7LevelView{
    UIColor *tc;
    UIButton *tb;
}


- (IBAction)buttonSelected:(id)sender {
    if (tb == sender) { //不允许重复点击相同按钮
        return;
    }
    
    if (tb != nil && tc != nil) {
        tb.backgroundColor = tc;
    }
    
    for (int i = 0; i < self.buttons.count; i++) {
        UIButton *btn = self.buttons[i];
        btn.selected = (btn == sender);
        if (btn.selected) {
            _value = @(i+1);
            tc = btn.backgroundColor;
            btn.backgroundColor = nil;
            tb = btn;
        }
    }
    
    if (_blockReturn) {
        _blockReturn(_value);
    }
}


- (void)setValue:(id)value{
    for (int i = 0; i < self.buttons.count; i++) {
        UIButton *btn = self.buttons[i];
        btn.selected = [@(i+1) isEqual:value];
        if (btn.selected) {
            tb = btn;
            tc = btn.backgroundColor;
            btn.backgroundColor = nil;
        }
    }
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

@end
