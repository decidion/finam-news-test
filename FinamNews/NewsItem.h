//
//  NewsItem.h
//  FinamNews
//
//  Created by Muslim Kushiev on 25.05.2018.
//  Copyright © 2018 Muslim Kushiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsItem : NSObject
@property(nonatomic, strong) NSString *author;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *descriptionOfArticle;
@property(nonatomic, strong) NSString *url;
@property(nonatomic, strong) NSString *urlToImage;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
