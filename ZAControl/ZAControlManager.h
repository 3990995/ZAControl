//
//  ZAControlManager.h
//  ZAControl
//
//  Created by liao on 14-7-11.
//  Copyright (c) 2014年 Zhenai Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZATextFieldView.h"

@interface ZAControlManager : NSObject


+ (ZATextFieldView *)loadTextFieldValue:(NSString *)defaultValue
                        withPlaceholder:(NSString *)placeholder
                              withFrame:(CGRect)frame
                        didBeginEditing:(DidBeginEditingBlock)didBeginEditingBlock
                            returnBlock:(ReturnBlock)returnBlock;

@end
