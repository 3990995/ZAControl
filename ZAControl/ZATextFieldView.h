//
//  ZATextFieldView.h
//  ZAControl 输入题控件
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZABaseView.h"


@interface ZATextFieldView : ZABaseView<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (copy, nonatomic) BlockReturn blockReturn;
@property (copy, nonatomic) BlockDidBeginEditing blockDidBeginEditing;

@end
