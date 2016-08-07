//
//  QWPopupWindowVC.m
//  QWPopupWindow
//
//  Created by 王权伟 on 16/8/4.
//  Copyright © 2016年 wangqw. All rights reserved.
//

#import "QWPopupWindowVC.h"

@interface QWPopupWindowVC ()

@end

@implementation QWPopupWindowVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //千万别设置view的alpha 设置alpha 会导致view下的所有子视图都变透明
    self.view.backgroundColor = [UIColor clearColor];
    
    //取消按钮
    [self.dismissBtn addTarget:self action:@selector(dismissBtn:) forControlEvents:UIControlEventTouchUpInside];
    //设置按钮透明度
    self.dismissBtn.alpha = 0.5f;
    self.dismissBtn.backgroundColor = [UIColor blackColor];
}

//视图显示完 弹出弹窗
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //更改视图 底部约束
    self.viewBottomConstraint.constant = 0;
    
    //执行动画
    [UIView animateWithDuration:0.25 animations:^{
        
        //强制更新约束
        [self.view layoutIfNeeded];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- 按钮点击事件
//关闭弹窗按钮
- (void) dismissBtn:(UIButton *)btn{
    
    //更改视图 底部约束
    self.viewBottomConstraint.constant = -171;
    
    //执行动画
    [UIView animateWithDuration:0.25 animations:^{
        
        //强制更新约束
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:nil];
    }];

}

@end
