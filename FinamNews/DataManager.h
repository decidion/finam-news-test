//
//  DataManager.h
//  FinamNews
//
//  Created by Muslim Kushiev on 25.05.2018.
//  Copyright © 2018 Muslim Kushiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsRequest.h"

@interface DataManager : NSObject
+ (instancetype)sharedInstance;

- (void)newsWithRequest:(NewsRequest)request withCompletion:(void (^)(NSArray *news))completion;

@end
