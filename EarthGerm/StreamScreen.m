//
//  StreamScreen.m
//  iReporter
//
//  Created by Marin Todorov on 10/02/2012.
//  Copyright (c) 2012 Marin Todorov. All rights reserved.
//

#import "StreamScreen.h"

#import "AppDelegate.h"


@implementation StreamScreen



#pragma mark - View lifecycle

- (void)viewDidLoad
{
     [[self view] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"egintro.jpg"]]];
    
    
   
}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




@end
