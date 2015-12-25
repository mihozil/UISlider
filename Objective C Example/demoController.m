//
//  demoController.m
//  Objective C Example
//
//  Created by Apple on 12/25/15.
//  Copyright (c) 2015 AMOSC. All rights reserved.
//

#import "demoController.h"

@interface demoController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation demoController{
    NSTimer *_timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(sliderrunning) userInfo:nil repeats:true];
    _slider.transform = CGAffineTransformMakeRotation(M_PI);
    _slider.tintColor = [UIColor redColor];
    [self.slider setThumbImage:@"thumb.png" forState:UIControlStateNormal];
    _slider.thumbTintColor = [UIColor yellowColor];
    
}
- (void) sliderrunning {
    self.slider.value+=0.005;
    if (self.slider.value>=1){
        [_timer invalidate];
    }
}

@end
