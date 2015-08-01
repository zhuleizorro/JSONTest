//
//  ViewController.m
//  TestJSONToModel
//
//  Created by Yangyang on 15/8/1.
//  Copyright (c) 2015年 itbox. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "Book.h"
#import "Book2.h"
#import "Book3.h"

#define TEST_COUNT 100

@interface ViewController ()
@property (nonatomic, strong) NSDictionary *dic;///<字典
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)testMantle:(UIButton *)sender {
    NSLog(@"---Mantle开始解析---");
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    for (NSUInteger i = 0; i < TEST_COUNT; i++) {
        Book *book = [MTLJSONAdapter modelOfClass:[Book class] fromJSONDictionary:self.dic error:nil];
        
    }
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"耗时---%f",end - start);
}

- (IBAction)testJSONModel:(UIButton *)sender {
    NSLog(@"---JSONModel开始解析---");
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    for (NSUInteger i = 0; i < TEST_COUNT; i++) {
        Book2 *book = [[Book2 alloc] initWithDictionary:self.dic error:nil];
        
    }
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"耗时---%f",end - start);
}

- (IBAction)testMJExtension:(UIButton *)sender {
    NSLog(@"---MJExtension开始解析---");
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    for (NSUInteger i = 0; i < TEST_COUNT; i++) {
        Book3 *book = [Book3 objectWithKeyValues:self.dic];
        
    }
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"耗时---%f",end - start);
}


#pragma mark - getters 
- (NSDictionary *)dic {
    if (!_dic) {
        _dic = @{
                 @"name":@"test",
                 @"name1":@"test",
                 @"name2":@"test",
                 @"name3":@"test",
                 @"name4":@"test",
                 @"name5":@"test",
                 @"name6":@"test",
                 @"name7":@"test",
                 @"name8":@"test",
                 @"name9":@"test"
                 };
    }
    return _dic;
}

@end
