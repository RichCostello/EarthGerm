//
//  first.m
//  iReporter
//
//  Created by Richard Costello on 09/10/2012.
//  Copyright (c) 2012 Marin Todorov. All rights reserved.
//

#import "first.h"
#import "AppDelegate.h"

#import "API.h"
#import "LoginScreen.h"

@interface first()

@end

@implementation first

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Custom initialization
    
    //self.navigationItem.title = @"Post photo";
    
    if (![[API sharedInstance] isAuthorized]) {
        [self performSegueWithIdentifier:@"ShowLogin" sender:nil];
    }
    
        
        
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - menu

-(IBAction)btnActionTapped:(id)sender
{
    
}

@end
