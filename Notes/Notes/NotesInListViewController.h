//
//  NotesInListViewController.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoteList.h"

@interface NotesInListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (nonatomic, strong) NoteList *noteList;

@end
