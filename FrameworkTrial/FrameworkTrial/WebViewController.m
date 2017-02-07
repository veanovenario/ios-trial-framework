//
//  WebViewController.m
//  FrameworkTrial
//
//  Created by Vea Novenario on 2/2/17.
//  Copyright © 2017 Vea Novenario. All rights reserved.
//

#import "WebViewController.h"
#import "Constants.h"

@interface WebViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (nonatomic, strong) NSString *baseURL;

@end

@implementation WebViewController

#pragma mark - Life cycle

-(id)initWeb{
    
    NSBundle* frameworkBundle = [NSBundle bundleForClass:[self class]];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:kStoryboardFrameworkTrial bundle:frameworkBundle];
    self = (WebViewController *)[storyboard instantiateViewControllerWithIdentifier:@"WebViewController"];
    return self;
}

-(void)setBaseURL:(NSString *)baseURL userID:(NSString *)userID token:(NSString *)token profileToken:(NSString *)profileToken svcAuth:(NSString *)svcAuth{
    self.baseURL = baseURL == nil ? @"" : baseURL;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Default Settings for SVProgressHUD
//    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
//    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    
    // Load URL
    NSLog(@"Bingo URL: %@",self.baseURL);
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.baseURL]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UIWebView delegate

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
//    [SVProgressHUD show];
    
    return YES;
}

@end
