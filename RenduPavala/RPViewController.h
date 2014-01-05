//
//  RPViewController.h
//  RenduPavala
//
//  Created by Prasad Adireddi on 02/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPViewController : UIViewController <UITabBarDelegate, UITableViewDelegate, UITableViewDataSource>{
    IBOutlet UITableView* _feedTableView;
    IBOutlet UITabBar* _mainTabBar;
}


@end
