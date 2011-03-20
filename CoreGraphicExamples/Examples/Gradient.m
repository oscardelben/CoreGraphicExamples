//
//  Gradient.m
//  CoreGraphicExamples
//
//  Created by Oscar Del Ben on 3/18/11.
//  Copyright 2011 DibiStore. All rights reserved.
//

#import "Gradient.h"

@interface MyView : UIView
@end

@implementation MyView

- (void)drawRect:(CGRect)rect
{
    CAGradientLayer *gradient = [[[CAGradientLayer alloc] init] autorelease];
    
    CGRect gradientFrame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    gradient.frame = gradientFrame;
    
    CGColorRef darkColor = [[UIColor darkGrayColor] CGColor];
    CGColorRef lightColor = [[UIColor lightGrayColor] CGColor];
    
    gradient.colors = [NSArray arrayWithObjects:(id)darkColor, (id)lightColor, nil];
    
    [[self layer] insertSublayer:gradient atIndex:0];
}

@end

@implementation Gradient

- (void)viewDidLoad
{
    MyView *myView = [[[MyView alloc] initWithFrame:CGRectMake(0, 0, 220, 220)] autorelease];
    [self.view addSubview:myView];
}

@end
