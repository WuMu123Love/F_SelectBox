//
//  ViewController.m
//  FlsSelectBox
//
//  Created by fls on 2019/5/5.
//  Copyright © 2019年 fls. All rights reserved.
//

#import "ViewController.h"
#import "FLSFiltrateView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * array = @[@"1",@"2",@"3"];
    FLSFiltrateView * flsview = [[FLSFiltrateView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, array.count*60+20)];
    flsview.titleArray = array;
    flsview.backSelectItemArray = ^(NSArray * _Nonnull itemArray) {
        NSLog(@"%@",itemArray);
    };
    [self.view addSubview:flsview];
    
}


@end
