//
//  ZATextFieldView.h
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ReturnBlock)(NSString *value);
typedef void(^DidBeginEditingBlock)(void);

@interface ZATextFieldView : UIView<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (copy, nonatomic) ReturnBlock returnBlock;
@property (copy, nonatomic) DidBeginEditingBlock didBeginEditingBlock;

@end
