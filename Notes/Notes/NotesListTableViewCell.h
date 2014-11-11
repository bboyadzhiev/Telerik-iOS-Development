//
//  NotesListTableViewCell.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotesListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *notesListTitle;
@property (weak, nonatomic) IBOutlet UILabel *notesListCategory;

@end
