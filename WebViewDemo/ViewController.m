//
//  ViewController.m
//  WebViewDemo
//
//  Created by Zilu.Ma on 2017/3/23.
//  Copyright © 2017年 oc. All rights reserved.
//

#import "ViewController.h"
#import "JSTest.h"

@interface ViewController ()<UIWebViewDelegate>

{
    UIWebView *_webView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"jsDemo" ofType:@"html"];
    NSURL *url = [NSURL URLWithString:path];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    _webView.delegate = self;
    [self.view addSubview:_webView];
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"webview开始加载");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"webview已经完成加载");

    JSContext *context = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    JSTest *test = [JSTest new];
    [context setObject:test forKeyedSubscript:@"JsObject"];
    context.exceptionHandler = ^(JSContext *context, JSValue *exception){
        NSLog(@"%@",exception);
    };
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"webview加载失败");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
