//
//  ViewController.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoteList.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *notesListTableView;
@property (weak, nonatomic) IBOutlet UIButton *addNewListButton;
@property (weak, nonatomic) IBOutlet UITextField *listTitleText;
@property (weak, nonatomic) IBOutlet UITextField *listTitleCategory;

@property (nonatomic, strong) NoteList *selected;

@property (nonatomic, strong) NSMutableArray* numbers;

@end

