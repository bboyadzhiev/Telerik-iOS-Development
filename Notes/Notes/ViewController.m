//
//  ViewController.m
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "ViewController.h"
#import "NotesStorage.h"
#import "NotesListTableViewCell.h"
#import "NotesInListViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.numbers = [NSMutableArray arrayWithObjects:@1, @2, @3, nil];
    [NotesStorage addNoteListWithTitle:@"Test Note List" andCategory:@"Test Category"];
    [NotesStorage addNoteListWithTitle:@"Test Note List 2" andCategory:@"Test Category"];
    
    // ----- IMPORTANT WHEN USING CUSTOM TABLEVIEWCELL !!! ---
    [self.notesListTableView setDelegate:self];
    // ----- IMPORTANT WHEN USING CUSTOM TABLEVIEWCELL !!! ---
    
    [self.notesListTableView setDataSource:self];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [NotesStorage getNoteListsCount];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"noteListViewCell" forIndexPath:indexPath];
    
    
    NSString *cellIdentifier = @"noteListViewCell";
    NotesListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[NotesListTableViewCell alloc] initWithStyle: UITableViewCellStyleDefault
                                             reuseIdentifier:cellIdentifier];
    }
    
    NoteList *l = [NotesStorage getNoteListAtIndex:indexPath.row];
    cell.notesListTitle.text = l.noteListTitle;
    cell.notesListCategory.text = l.noteListCategory;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSLog(@"note");
    return cell;
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    return indexPath;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"notesListSegue"])
    {
        // Get reference to the destination view controller
        NotesInListViewController *vc = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        NSLog(@"Going..");
        vc.noteList = self.selected;
    }
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"didSelectRowAtIndexPath");
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    self.selected = [NotesStorage getNoteListAtIndex:indexPath.row];
     [self performSegueWithIdentifier:@"notesListSegue" sender:self];
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Enter Code"
//                                                    message: [NSString stringWithFormat: @"for account %@", l.noteListTitle]
//                                                   delegate:self
//                                          cancelButtonTitle:@"Cancel"
//                                          otherButtonTitles:@"OK", nil];
//    //alert.alertViewStyle = UIAlertViewStylePlainTextInput;
//    alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
//    [alert show];
}


@end
