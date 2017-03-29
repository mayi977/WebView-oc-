//
//  AppDelegate.h
//  WebViewDemo
//
//  Created by Zilu.Ma on 2017/3/23.
//  Copyright © 2017年 oc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

