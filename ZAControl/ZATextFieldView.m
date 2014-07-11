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
    [textField resignFirstResponder];
    if (_returnBlock) {
        _returnBlock(textField.text);
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (_didBeginEditingBlock) {
        _didBeginEditingBlock();
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
