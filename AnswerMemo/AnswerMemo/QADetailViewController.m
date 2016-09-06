//
//  QADetailViewController.m
//  AnswerMemo
//
//  Created by hourunjing on 2016/9/5.
//  Copyright © 2016年 com.hbzsios.answermemo. All rights reserved.
//

#import "QADetailViewController.h"

@interface QADetailViewController ()

@property (weak, nonatomic) IBOutlet YYTextView *answerTextView;

@end

@implementation QADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  self.automaticallyAdjustsScrollViewInsets = NO;
  
  // 内置简单的 markdown 解析
  YYTextSimpleMarkdownParser *parser = [YYTextSimpleMarkdownParser new];
  [parser setColorWithDarkTheme];
  
  // 2. 把解析器添加到 YYLabel 或 YYTextView
  _answerTextView.textParser = parser;
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
