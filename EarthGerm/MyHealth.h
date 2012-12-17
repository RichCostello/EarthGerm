//
//  MyHealth.h
//  EarthGerm
//
//  Created by Richard Costello on 20/10/2012.
//  Copyright (c) 2012 Rich Costelle. All rights reserved.
//

//#import <Foundation/Foundation.h>
//
//@interface MyHealth : UITableViewController
//
//@end

#import <UIKit/UIKit.h>

@interface MyHealth : UIViewController
<UITableViewDelegate, UITableViewDataSource>
{
    UILabel *headerLabel;
    NSArray *colorNames;
}

@property (strong, nonatomic) NSArray *colorNames;
@end
