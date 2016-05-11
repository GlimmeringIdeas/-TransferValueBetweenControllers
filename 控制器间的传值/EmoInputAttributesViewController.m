//
//  EmoInputAttributesViewController.m
//  控制器间的传值
//
//  Created by Emo_Lin on 14/10/24.
//  Copyright © 2014年 Emo Lin. All rights reserved.
//

#import "EmoInputAttributesViewController.h"
#import "EmoAttributesViewController.h"


@interface EmoInputAttributesViewController ()
@property (nonatomic , strong) UILabel *ShareInputField;
@end

@implementation EmoInputAttributesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor cyanColor];
    self.navigationItem.title = @"属性传值";
    
    CGFloat width = 200;
    CGFloat height = 30;
    CGFloat topMargin = 100;

    
    self.ShareInputField = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - width / 2,topMargin, width, height)];
    self.ShareInputField.text = self.attributesString;
    [self.view addSubview:self.ShareInputField];
}
@end
