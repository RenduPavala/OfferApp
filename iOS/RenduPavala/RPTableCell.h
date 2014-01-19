//
//  RPTableCell.h
//  RenduPavala
//
//  Created by Prasad Adireddi on 02/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPTableCell : UIView {
    IBOutlet UIImageView* _icon;
    IBOutlet UILabel* _header;
    IBOutlet UILabel* _category;
    IBOutlet UILabel* _location;
    IBOutlet UILabel* _reviewCount;
    IBOutlet UILabel* _reviewText;
    IBOutlet UILabel* _followersCount;
    IBOutlet UILabel* _followersText;
    IBOutlet UIButton* _bankInfo;
    IBOutlet UILabel* _info;
}

- (void)setHeaderText:(NSString*)text;
- (void)setIcon:(NSString*)url;

@end
