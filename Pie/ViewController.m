//
//  ViewController.m
//  Pie
//
//  Created by mac on 17/5/24.
//  Copyright © 2017年 cai. All rights reserved.
//

#import "ViewController.h"
#import "SectorView.h"
#import "PieView.h"

#define SCREEN_Width    ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_Height   ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()

@property (nonatomic, strong) SectorView *sectorView;
@property (nonatomic, strong) PieView *pieView;

@end

@implementation ViewController

#pragma mark -
- (SectorView *)sectorView
{
    if (!_sectorView) {
        _sectorView = [[SectorView alloc] initWithFrame:CGRectMake(10, 20, SCREEN_Width - 20, SCREEN_Height / 2.0 - 30)];
        _sectorView.backgroundColor = [UIColor cyanColor];
    }
    return _sectorView;
}

- (PieView *)pieView
{
    if (!_pieView) {
        _pieView = [[PieView alloc] initWithFrame:CGRectMake(10, SCREEN_Height - 20 - (SCREEN_Height / 2.0 - 30), SCREEN_Width - 20, SCREEN_Height - 20 - (SCREEN_Height / 2.0 - 30) - 10 - 20)];
        _pieView.backgroundColor = [UIColor orangeColor];
    }
    return _pieView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUI];
    
}

- (void)createUI
{
    [self.view addSubview:self.sectorView];
    [self.view addSubview:self.pieView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
