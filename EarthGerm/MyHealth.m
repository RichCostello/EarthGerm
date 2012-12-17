//
//  MyHealth.m
//  EarthGerm
//
//  Created by Richard Costello on 20/10/2012.
//  Copyright (c) 2012 Rich Costelle. All rights reserved.
//

#import "MyHealth.h"

@implementation MyHealth
@synthesize  colorNames;

//-(void)drawRect:(CGRect)rect {
//    headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 44.0)];
//    headerLabel.font = [UIFont fontWithName:@"Helvetica" size:20];
//    headerLabel.text = @"My Health";
//    headerLabel.backgroundColor = [UIColor clearColor];
//    headerLabel.textColor = [UIColor blackColor ];
//    [self addSubView:headerLabel];
//  
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
       
    self.colorNames = [[NSArray alloc]
                       initWithObjects:@"Report a Cold or Flu", @"Your Health History",
                       @"Account Information", @"Tips and FAQ's", nil];
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.colorNames = nil;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [self.colorNames count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell.
    cell.textLabel.text = [self.colorNames
                           objectAtIndex: [indexPath row]];
    return cell;
}

@end
