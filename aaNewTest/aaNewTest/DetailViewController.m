//
//  DetailViewController.m
//  aaNewTest
//
//  Created by gaoyong on 14/11/15.
//  Copyright (c) 2014年 gaoyong. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUI];
    
    NSDictionary *dict = NSDictionaryOfVariableBindings(uv1,uv2,uv3,uv4,uv5,uv6);
    
//    NSString *vfString = @"H:|-10-[uv1(100)]";
//    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
//    
//    vfString = @"H:[uv1]-10-[uv2(100)]";
//    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
//    
//    vfString = @"V:|-10-[uv1(100)]";
//    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
//    
//    vfString = @"V:|-10-[uv2(100)]";
//    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];

    
    NSString *vfString = @"H:|-10-[uv1]-10-[uv2]-10-|";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
    
    vfString = @"H:|-10-[uv3]-10-[uv4]-10-|";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
    
    vfString = @"H:|-10-[uv5]-10-[uv6]-10-|";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];


    vfString = @"V:|-10-[uv1]-10-[uv3]";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
    
    vfString = @"V:[uv3]-10-[uv5]-10-|";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
    
    vfString = @"V:|-10-[uv2]-10-[uv4]";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
    
    vfString = @"V:|[uv4]-10-[uv6]-10-|";
    [self addConstrainToView:self.view vfString:vfString dictBinding:dict];
    
    return;
}


-(void) addConstrainToView:(UIView *) uv vfString:(NSString *) vfString dictBinding:(NSDictionary *) dictBinding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:vfString options:0 metrics:nil views:dictBinding];
    [uv addConstraints:constraints];
}



-(void) setUI
{
    uv1 = [UIView new];
    uv1.backgroundColor = [UIColor redColor];
    [uv1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:uv1];
    
    uv2 = [UIView new];
    uv2.backgroundColor = [UIColor magentaColor];
    [uv2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:uv2];
    
    uv3 = [UIView new];
    uv3.backgroundColor = [UIColor greenColor];
    [uv3 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:uv3];
    
    uv4 = [UIView new];
    uv4.backgroundColor = [UIColor yellowColor];
    [uv4 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:uv4];
    
    uv5 = [UIView new];
    uv5.backgroundColor = [UIColor orangeColor];
    [uv5 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:uv5];
    
    uv6 = [UIView new];
    uv6.backgroundColor = [UIColor purpleColor];
    [uv6 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:uv6];
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
