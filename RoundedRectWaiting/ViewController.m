//
//  ViewController.m
//  RoundedRectWaiting
//
//  Created by 孙晓健 on 16/3/9.
//  Copyright © 2016年 sxiaojian. All rights reserved.
//

#import "ViewController.h"

#import "RoundedWaitingView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet RoundedWaitingView *customView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.customView addRotationAnimation];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
