//
//  CustomTableViewCellController.m
//  CustomTableViewCell
//
//  Created by Admin on 11/4/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "CustomTableViewCellController.h"

@implementation CustomTableViewCellController

@synthesize cellImage = _cellImage;
@synthesize cellTitle = _cellTitle;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
