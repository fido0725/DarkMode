//
//  ViewController.m
//  DarkMode
//
//  Created by ptx on 2020/6/13.
//  Copyright © 2020 ptx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self.navigationController.viewControllers indexOfObject:self] != 0) {
        [self addNavigationBarItem];
    }else{
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 100, 50)];
        [btn setImage:[UIImage systemImageNamed:@"paperplane"] forState:UIControlStateNormal];
        [btn setTintColor:[UIColor systemYellowColor]];
        [btn addTarget:self action:@selector(toPush:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }

}

-(void)addNavigationBarItem
{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"arrowback"] forState:UIControlStateNormal];
    [backBtn setTitle:@"返回" forState: UIControlStateNormal];
    [backBtn setTitleColor:[UIColor systemGrayColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(toBack:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
}

-(void)toBack:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)toPush:(UIButton *)sender
{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
