//
//  ZATextFieldView.m
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ZATextFieldView.h"

@implementation ZATextFieldView


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (_blockReturn) {
        _blockReturn(textField.text);
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (_blockDidBeginEditing) {
        _blockDidBeginEditing();
    }
}


- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

- (void)awakeFromNib{
    _textField.delegate = self;
}

@end
