//
//  ViewController.m
//  QWPopupWindow
//
//  Created by 王权伟 on 16/8/4.
//  Copyright © 2016年 wangqw. All rights reserved.
//

#import "ViewController.h"
#import "QWPopupWindowVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //按钮点击事件
    [self.popBtn addTarget:self action:@selector(popBtn:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- 按钮点击事件
- (void)popBtn:(UIButton *)btn{
    
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    QWPopupWindowVC * vc = [sb instantiateViewControllerWithIdentifier:@"QWPopupWindowVC"];
    vc.providesPresentationContextTransitionStyle = YES;
    vc.definesPresentationContext = YES;
    vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:vc animated:NO completion:nil];
    
}

@end
