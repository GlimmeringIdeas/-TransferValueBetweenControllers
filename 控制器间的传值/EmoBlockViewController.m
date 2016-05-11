//
//  EmoBlockViewController.m
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoBlockViewController.h"
#import "EmoInputBlockViewController.h"
@interface EmoBlockViewController ()
@property (nonatomic , strong) UILabel *blockField;
@property (nonatomic , strong) UIButton *blockBtn;
@end

@implementation EmoBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"代码块传值";
    self.view.backgroundColor = [UIColor orangeColor];

    CGFloat width = 200;
    CGFloat height = 30;
    CGFloat topMargin = 100;
    CGFloat YMargin = 80;
    
    self.blockField = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height)];
    [self.view addSubview:self.blockField];
    
    self.blockBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.blockBtn.frame = CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin+YMargin, width, height);
    [self.blockBtn setTitle:@"进入BLOCK的逆向传值" forState:UIControlStateNormal];
    [self.blockBtn addTarget:self action:@selector(blockClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blockBtn];
    
}

-(void) blockClick {
    EmoInputBlockViewController *share =[[EmoInputBlockViewController alloc] init];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    // 接收方只需要调用传输方的 block 方法
    [share showTheResultToFirst:^(NSString *secondString) {
        self.blockField.text = secondString;
    }];
    [self.navigationController pushViewController:share animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
