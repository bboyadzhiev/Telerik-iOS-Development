//
//  ViewController.m
//  UITableViewController
//
//  Created by Admin on 10/30/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "ViewController.h"
#import "CredentialsStorage.h"


@interface ViewController ()
            

@end

@implementation ViewController

static BOOL once;
static BOOL storing;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        [CredentialsStorage storePasswordForAccountName:@"Mariika" andPassword:@"77787676" withCode:@"mimeto"];
        [CredentialsStorage storePasswordForAccountName:@"Pesho" andPassword:@"12345678" withCode:@"pecata"];
        [CredentialsStorage storePasswordForAccountName:@"Gosho" andPassword:@"65465433" withCode:@"joreto"];
         [self.accountsTableView setDataSource:self];
   // NSString *pass = [CredentialsStorage getPasswordForAccountName:@"Pesho" withCode:@"code"];
   // NSLog(@"pass: %@", pass);

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [CredentialsStorage getAccountsCount];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = @"tableViewAccountsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault
                                      reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [CredentialsStorage getAccountNameAtIndex:indexPath.row];
    
    return cell;
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (storing && buttonIndex == 1) {
         NSString *code = [alertView textFieldAtIndex:0].text;
        if (code.length !=0) {
            [CredentialsStorage storePasswordForAccountName:self.accountNameTextField.text
                                                andPassword:self.passwordTextField.text
                                                   withCode:code];
            self.accountNameTextField.text = @"";
            self.passwordTextField.text = @"";
            [self.storeButton sizeToFit];
            [self.accountsTableView reloadData];
        }
        
        storing = NO;
    } else
    if (buttonIndex == 1) {
        NSString *code = [alertView textFieldAtIndex:0].text;
        
        self.passwordTextField.text = [CredentialsStorage getPasswordForAccountName:self.accountNameTextField.text
                                                                           withCode:code];
        self.storeButton.titleLabel.text = @"      Change       ";
    }else{
        self.accountNameTextField.text = @"";
        self.passwordTextField.text = @"";
        [self.storeButton sizeToFit];
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"didSelectRowAtIndexPath");
    NSString *accountName = [CredentialsStorage getAccountNameAtIndex:indexPath.row];
    self.accountNameTextField.text = accountName;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Enter Code"
                                                    message: [NSString stringWithFormat: @"for account %@", accountName]
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"OK", nil];
    //alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
    [alert show];
}


- (IBAction)storeButtonClick:(id)sender {
    NSString *accountName = self.accountNameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    if (accountName.length !=0 && password.length !=0) {
        storing = YES;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Enter Code"
                                                        message: [NSString stringWithFormat: @"for account %@", accountName]
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        //alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
        [alert show];
    }
    
   }

- (IBAction)clearButtonClick:(id)sender {
    self.accountNameTextField.text = @"";
    self.passwordTextField.text = @"";
    [self.storeButton sizeToFit];
    storing = YES;
}
@end
