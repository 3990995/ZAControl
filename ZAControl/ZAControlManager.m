//
//  ZAControlManager.m
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import "ZAControlManager.h"

@implementation ZAControlManager


+ (ZATextFieldView *)loadTextFieldFrame:(CGRect)frame
                              withValue:(NSString *)defaultValue
                        withPlaceholder:(NSString *)placeholder
                   blockDidBeginEditing:(BlockDidBeginEditing)blockDidBeginEditing
                            blockReturn:(BlockReturn)blockReturn
{
    ZATextFieldView *view = [[[NSBundle mainBundle] loadNibNamed:@"ZATextFieldView" owner:nil options:nil] firstObject];
    view.frame = frame;
    view.textField.placeholder = placeholder;
    view.textField.text = defaultValue;
    view.blockDidBeginEditing = blockDidBeginEditing;
    view.blockReturn = blockReturn;
    return view;
}

+ (ZAJudgeView *)loadJudgeViewFrame:(CGRect)frame
                           withDesc:(NSString *)desc
                  withQuestionTitle:(NSString *)questionTitle
                withTrueButtonTitle:(NSString *)buttonTitle1
               withFalseButtonTitle:(NSString *)buttonTitle2
                          withValue:(BOOL)value
                        blockReturn:(BlockReturn)blockReturn
{
    ZAJudgeView *view = [[[NSBundle mainBundle] loadNibNamed:@"ZAJudgeView" owner:nil options:nil] firstObject];
    view.labelDesc.text = desc;
    view.labelQuestionTitle.text = questionTitle;
    view.buttonTrue.titleLabel.text = buttonTitle1;
    view.buttonFalse.titleLabel.text = buttonTitle2;
    view.buttonTrue.selected = value;
    view.buttonFalse.selected = !value;
    view.blockReturn = blockReturn;
    return view;
}

@end
