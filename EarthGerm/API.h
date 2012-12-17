//
//  API.h
//  iReporter
//
//  Created by Richard Costello on 06/10/2012.
//  Copyright (c) 2012 Marin Todorov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFNetworking.h"

//API call completion block with result as json
typedef void (^JSONResponseBlock)(NSDictionary* json);

@interface API : AFHTTPClient
//the authorized user
@property (strong, nonatomic) NSDictionary* user;

+(API*)sharedInstance;

//check whether there's an authorized user
-(BOOL)isAuthorized;

//send an API command to the server
-(void)commandWithParams:(NSMutableDictionary*)params onCompletion:(JSONResponseBlock)completionBlock;

@end
