//
//  NotesListTableViewCell.m
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "NotesListTableViewCell.h"

@implementation NotesListTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

//- (void)awakeFromNib
//{
//    // Initialization code
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
