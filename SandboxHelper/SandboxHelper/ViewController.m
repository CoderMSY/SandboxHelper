//
//  ViewController.m
//  SandboxHelper
//
//  Created by SimonMiao on 2018/4/2.
//  Copyright © 2018年 Avatar. All rights reserved.
//

#import "ViewController.h"
#import "ATSandBoxHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showPath];
//    [self testString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showPath {
    NSString *homePath = [ATSandBoxHelper homePath];
    NSLog(@"homePath:%@",homePath);
    NSString *documentsPath = [ATSandBoxHelper documentsPath];
    NSLog(@"documentsPath:%@",documentsPath);
    
    NSString *libPrefPath = [ATSandBoxHelper libPrefPath];
    NSLog(@"libPrefPath:%@",libPrefPath);
    NSString *libCachePath = [ATSandBoxHelper libCachePath];
    NSLog(@"libCachePath:%@",libCachePath);
    NSString *tmpPath = [ATSandBoxHelper tmpPath];
    NSLog(@"tmpPath:%@",tmpPath);
    NSString *iapReceiptPath = [ATSandBoxHelper iapReceiptPath];
    NSLog(@"iapReceiptPath:%@",iapReceiptPath);
}

@end
