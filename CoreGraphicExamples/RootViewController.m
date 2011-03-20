//
//  RootViewController.m
//  CoreGraphicExamples
//
//  Created by Oscar Del Ben on 3/17/11.
//  Copyright 2011 DibiStore. All rights reserved.
//

#import "RootViewController.h"
#import "DropShadow.h"
#import "Gradient.h"
#import "RoundedButton.h"

@implementation RootViewController

@synthesize views;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"CG Examples";
    
    views = [NSArray arrayWithObjects:@"Drop Shadow", @"Gradient", @"Rounded Buttons", nil];
}


// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [views count];;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

    // Configure the cell.
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [views objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) 
    {
        case 0:
        {
            DropShadow *controller = [[DropShadow alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
            [controller release];
        }
            break;
        case 1:
        {
            Gradient *controller = [[Gradient alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
            [controller release];
        }
            break;
        case 2:
        {
            RoundedButton *controller = [[RoundedButton alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
            [controller release];
        }
            break;
            
        default:
            break;
    }
}

@end
