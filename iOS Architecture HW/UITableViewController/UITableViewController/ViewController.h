//
//  ViewController.h
//  UITableViewController
//
//  Created by Admin on 10/30/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *accountsTableView;
@property (weak, nonatomic) IBOutlet UITextField *accountNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *storeButton;
- (IBAction)storeButtonClick:(id)sender;

- (IBAction)clearButtonClick:(id)sender;

@end

