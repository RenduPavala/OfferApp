//
//  RPTableCell.m
//  RenduPavala
//
//  Created by Prasad Adireddi on 02/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import "RPTableCell.h"

@implementation RPTableCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setHeaderText:(NSString*)text {
    _header.text = text;
}

- (void)setIcon:(NSString*)url {
    UIImage* icon = [UIImage imageNamed:url];
    _icon.image = icon;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
