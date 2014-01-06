//
//  RPViewController.m
//  RenduPavala
//
//  Created by Prasad Adireddi on 02/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import "RPViewController.h"
#import "RPTableCell.h"

@interface RPViewController () {
    RPTableCell* _placeholderCell;
}

@end

@implementation RPViewController

static NSString *RPFeedCellIdentifier = @"RPFeedCellIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_feedTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString*) getRandomIconUrl {
    static NSString* urls[] = {@"check_128.png", @"google_ckeckout_128.png", @"mastercard_128.png", @"paypal_128.png", @"visa_128.png", @"wire_transfer_128.png"};
    int index = random() % 6;
    return urls[index];
}

//- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
//    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
//    
//    NSArray* displayedViews= [_feedTableView indexPathsForVisibleRows];
//    [_feedTableView reloadRowsAtIndexPaths:displayedViews withRowAnimation:UITableViewRowAnimationFade];
//}
//
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    [_feedTableView reloadData];
//    NSArray* displayedViews= [_feedTableView indexPathsForVisibleRows];
//    [_feedTableView reloadRowsAtIndexPaths:displayedViews withRowAnimation:UITableViewRowAnimationFade];
}




#pragma mark Tab Bar Delegate

- (void) tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"Selected Tab Bar Item!!");
}




#pragma mark Table View Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:RPFeedCellIdentifier];
    
    // Configure Cell
    RPTableCell *feedView = (RPTableCell*)[cell.contentView viewWithTag:100];
    [feedView setHeaderText:[NSString stringWithFormat:@"Header %d",[indexPath row]]];
    [cell.contentView layoutIfNeeded];
    
    NSString* url = [self getRandomIconUrl];
    [feedView setIcon:url];
    
    // add shadow
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:feedView.bounds];
    feedView.layer.masksToBounds = NO;
    feedView.layer.shadowColor = [UIColor blackColor].CGColor;
    feedView.layer.shadowOffset = CGSizeMake(0.0f, 3.0f);
    feedView.layer.shadowOpacity = 0.5f;
    feedView.layer.shadowRadius = 5.0f;
    feedView.layer.shadowPath = shadowPath.CGPath;
    
    // add rounded corners
    feedView.layer.cornerRadius = 10.0f;
    
    // do auto layout if needed
    [cell layoutIfNeeded];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}


#pragma mark Table View Delegate

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected row at index path %d", [indexPath row]);
}


@end
