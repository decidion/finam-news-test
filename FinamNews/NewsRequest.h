//
//  NewsRequest.h
//  FinamNews
//
//  Created by Muslim Kushiev on 25.05.2018.
//  Copyright © 2018 Muslim Kushiev. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct NewsRequest {
    __unsafe_unretained NSString *path;
    __unsafe_unretained NSString *country;
    __unsafe_unretained NSString *category;
} NewsRequest;

