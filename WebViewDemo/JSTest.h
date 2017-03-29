//
//  JSTest.h
//  WebViewDemo
//
//  Created by Zilu.Ma on 2017/3/23.
//  Copyright © 2017年 oc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol JavaScript <JSExport>

- (void)showToast:(NSString *)string;

@end

@interface JSTest : NSObject<JavaScript>

@end
