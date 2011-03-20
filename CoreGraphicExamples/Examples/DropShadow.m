//
//  DropShadow.m
//  CoreGraphicExamples
//
//  Created by Oscar Del Ben on 3/17/11.
//  Copyright 2011 DibiStore. All rights reserved.
//

#import "DropShadow.h"

@interface GradientView : UIView
@end

@implementation GradientView

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    //CGContextClearRect(context, rect);

    int padding = 10;
    
    CGContextSetRGBFillColor(context, 145/255.0, 214/255.0, 56/255.0, 1);
    CGContextSetShadow(context, CGSizeMake(0, 3), padding);
    /*
    CGRect fillRect = CGRectMake(10, 10, self.frame.size.width - 20, self.frame.size.height - 20);
    CGContextFillRect(context, fillRect);
    */
    CGPoint a = CGPointMake(padding, self.frame.size.height - padding);
    CGPoint b = CGPointMake(self.frame.size.width / 2, padding);
    CGPoint c = CGPointMake(self.frame.size.width - padding, self.frame.size.height - padding);
    
    CGContextMoveToPoint(context, a.x, a.y);
    CGContextAddLineToPoint(context, b.x, b.y);
    CGContextAddLineToPoint(context, c.x, c.y);
    CGContextFillPath(context);
}

@end

@implementation DropShadow

- (void)viewDidLoad
{
    self.title = @"Drop Shadow";

    GradientView *myView = [[GradientView alloc] initWithFrame:CGRectMake(50, 50, 220, 220)];
    myView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:myView];
    [myView release];
}

@end
