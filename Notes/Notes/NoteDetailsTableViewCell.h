//
//  NoteDetailsTableViewCell.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteDetailsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *noteTitle;
@property (weak, nonatomic) IBOutlet UILabel *noteDescription;
@property (weak, nonatomic) IBOutlet UILabel *noteDate;

@end
