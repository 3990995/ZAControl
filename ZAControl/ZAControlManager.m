//
//  ZAControlManager.m
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ZAControlManager.h"

@implementation ZAControlManager


+ (ZATextFieldView *)loadTextFieldValue:(NSString *)defaultValue
                        withPlaceholder:(NSString *)placeholder
                              withFrame:(CGRect)frame
                        didBeginEditing:(DidBeginEditingBlock)didBeginEditingBlock
                            returnBlock:(ReturnBlock)returnBlock{
    ZATextFieldView *view = [[[NSBundle mainBundle] loadNibNamed:@"ZATextFieldView" owner:nil options:nil] firstObject];
    view.frame = frame;
    view.textField.placeholder = placeholder;
    view.textField.text = defaultValue;
    view.didBeginEditingBlock = didBeginEditingBlock;
    view.returnBlock = returnBlock;
    return view;
}

@end
