//
//  JSTest.m
//  WebViewDemo
//
//  Created by Zilu.Ma on 2017/3/23.
//  Copyright © 2017年 oc. All rights reserved.
//

#import "JSTest.h"
#import <UIKit/UIKit.h>

@implementation JSTest

- (void)showToast:(NSString *)string{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:string delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

@end
