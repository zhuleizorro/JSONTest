//
//  Book.m
//  TestJSONToModel
//
//  Created by Yangyang on 15/8/1.
//  Copyright (c) 2015年 itbox. All rights reserved.
//

#import "Book.h"

@implementation Book
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name" :@"name",
             @"name1" :@"name1",
             @"name2" :@"name2",
             @"name3" :@"name3",
             @"name4" :@"name4",
             @"name5" :@"name5",
             @"name6" :@"name6",
             @"name7" :@"name7",
             @"name8" :@"name8",
             @"name9" :@"name9",
             };
}
@end
