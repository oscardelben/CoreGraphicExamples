//
//  RoundedButton.m
//  CoreGraphicExamples
//
//  Created by Oscar Del Ben on 3/20/11.
//  Copyright 2011 DibiStore. All rights reserved.
//

#import "RoundedButton.h"

@interface MyButton : UIButton
@end

@implementation MyButton

- (void)drawRect:(CGRect)rect
{
    self.layer.backgroundColor = [[UIColor orangeColor] CGColor];
    self.layer.borderWidth = 2;
    self.layer.borderColor = [[UIColor blackColor] CGColor];
    self.layer.cornerRadius = 10;
    self.titleLabel.textColor = [UIColor blackColor];
}

@end

@implementation RoundedButton

- (void)viewDidLoad
{
    UIButton *button = [[MyButton alloc] initWithFrame:CGRectMake(20, 20, 100, 30)];
 
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    
    [self.view addSubview:button];
}

@end
