//
//  ViewController.m
//  Rainning&SakuraDemo
//
//  Created by 万晓 on 16/8/1.
//  Copyright © 2016年 wxm. All rights reserved.
//

#import "ViewController.h"
#import "XMWeatherView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *RainButton;

@property (weak, nonatomic) IBOutlet UIButton *SakuraButton;

@property(nonatomic,strong) UIView *backgroundView;

@property(nonatomic,strong) XMWeatherView *weatherView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.backgroundView=[[UIView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:_backgroundView];
    
    [self.view bringSubviewToFront:self.RainButton];
    
    [self.view bringSubviewToFront:self.SakuraButton];
    
    self.weatherView=[[XMWeatherView alloc] initWithFrame:self.view.frame andEffect:@"rain"];
    
    [self.backgroundView addSubview:_weatherView];
    
}

- (IBAction)SakuraClick:(UIButton *)sender {
    
    self.weatherView=nil;
    
    self.weatherView=[[XMWeatherView alloc] initWithFrame:self.view.frame andEffect:@"sakura"];
    
    [self.backgroundView addSubview:_weatherView];
}

- (IBAction)RainClick:(UIButton *)sender {
    
    self.weatherView=nil;
    
    self.weatherView=[[XMWeatherView alloc] initWithFrame:self.view.frame andEffect:@"rain"];
    
    [self.backgroundView addSubview:_weatherView];
    
}


@end
