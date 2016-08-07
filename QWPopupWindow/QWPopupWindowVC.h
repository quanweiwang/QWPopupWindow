//
//  QWPopupWindowVC.h
//  QWPopupWindow
//
//  Created by 王权伟 on 16/8/4.
//  Copyright © 2016年 wangqw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QWPopupWindowVC : UIViewController
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewBottomConstraint;//弹窗底部约束
@property (weak, nonatomic) IBOutlet UIButton *dismissBtn;//隐藏按钮

@end
