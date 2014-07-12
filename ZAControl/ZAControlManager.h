//
//  ZAControlManager.h
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZATextFieldView.h"
#import "ZAJudgeView.h"
#import "ZA6LevelView.h"

typedef enum : NSUInteger {
    LevelQuestionType6,
    LevelQuestionType7,
} LevelQuestionType;

@interface ZAControlManager : NSObject


+ (ZABaseView *)loadZALevelViewType:(LevelQuestionType)type
                            withFrame:(CGRect)frame
                             withDesc:(NSString *)desc
                    withQuestionTitle:(NSString *)questionTitle
                            withValue:(id)value
                          blockReturn:(BlockReturn)blockReturn;



/**
 *  判断题
 *
 *  @param frame         控件尺寸
 *  @param desc          顶部文字描述
 *  @param questionTitle 问题标题
 *  @param buttonTitle1  判断真-按钮文字
 *  @param buttonTitle2  判断假-按钮文字
 *  @param value         默认值（初始值）
 *  @param blockReturn   点击判断按钮回调
 *
 *  @return 控件
 */
+ (ZAJudgeView *)loadJudgeViewFrame:(CGRect)frame
                           withDesc:(NSString *)desc
                  withQuestionTitle:(NSString *)questionTitle
                withTrueButtonTitle:(NSString *)buttonTitle1
               withFalseButtonTitle:(NSString *)buttonTitle2
                          withValue:(BOOL)value
                        blockReturn:(BlockReturn)blockReturn;

/**
 *  输入题【昵称】
 *
 *  @param frame                控件尺寸
 *  @param defaultValue         输入框默认值
 *  @param placeholder          你懂的
 *  @param didBeginEditingBlock 控件开始编辑时的回调
 *  @param returnBlock          控件点击确认键盘时的回调
 *
 *  @return 控件
 */
+ (ZATextFieldView *)loadTextFieldFrame:(CGRect)frame
                              withValue:(NSString *)defaultValue
                        withPlaceholder:(NSString *)placeholder
                   blockDidBeginEditing:(BlockDidBeginEditing)blockDidBeginEditing
                            blockReturn:(BlockReturn)blockReturn;


@end
