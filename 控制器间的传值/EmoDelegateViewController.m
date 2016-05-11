//
//  EmoDelegateViewController.m
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoDelegateViewController.h"
#import "EmoInputDataViewController.h"
@interface EmoDelegateViewController ()<EmoInputDataViewControllerDelegate>
@property (nonatomic , strong) UILabel *delegateField;
@property (nonatomic , strong) UIButton *delegateBtn;
@end

@implementation EmoDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"代理传值";
    self.view.backgroundColor = [UIColor orangeColor];
    
    CGFloat width = 200;
    CGFloat height = 30;
    CGFloat topMargin = 100;
    CGFloat YMargin = 80;
    
    self.delegateField = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height)];
    [self.view addSubview:self.delegateField];
    
    self.delegateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.delegateBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin, width, height);
    [self.delegateBtn setTitle:@"进入代理的逆向传值" forState:UIControlStateNormal];
    [self.delegateBtn addTarget:self action:@selector(delegateClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.delegateBtn];
    
}

// 5. 接收代理传值需要创建发送对象“share”并设置其为代理“share.delegate = self;”
-(void) delegateClick {
    EmoInputDataViewController *share =[[EmoInputDataViewController alloc] init];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    share.delegate = self;
    [self.navigationController pushViewController:share animated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 6.调用发送方的传递方法，将参数 value 赋值给接收的位置
-(void)changeValue:(NSString *)value {
    self.delegateField.text =value;
}

@end
