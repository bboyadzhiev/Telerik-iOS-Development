//
//  CustomTableViewCellController.h
//  CustomTableViewCell
//
//  Created by Admin on 11/4/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCellController : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;

@end
