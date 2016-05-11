//
//  EmoInputDataViewController
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoInputDataViewController.h"
#import "EmoDelegateViewController.h"


@interface EmoInputDataViewController ()
@property (nonatomic , strong) UITextField *ShareInputField;
@property (nonatomic , strong) UIButton *ShareInputBtn;
@end

@implementation EmoInputDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor cyanColor];
    self.navigationItem.title = @"代理传值";
    
    CGFloat width = 200;
    CGFloat height = 30;
    CGFloat topMargin = 100;
    CGFloat YMargin = 80;
    
    self.ShareInputField = [[UITextField alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height)];
    self.ShareInputField.text = self.attributesString;
    self.ShareInputField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.ShareInputField];
    
    self.ShareInputBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ShareInputBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin, width, height);
    [self.ShareInputBtn setTitle:@"开始传值" forState:UIControlStateNormal];
    [self.ShareInputBtn setTitle:@"正在传值中" forState: UIControlStateHighlighted];
    [self.ShareInputBtn addTarget:self action:@selector(ShareInputClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.ShareInputBtn];
    
}

-(void) ShareInputClick {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

// 4. 在页面即将消失时传值，当遵守代理协议和代理方法时，将需要传值的“self.ShareInputField.text”参数通过“changeValue:”方法传递出去
-(void)viewWillDisappear:(BOOL)animated {
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeValue:)]) {
        [self.delegate changeValue:self.ShareInputField.text];
    }
}


@end
