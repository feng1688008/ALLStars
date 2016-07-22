//
//  ViewController.m
//  二分查找
//
//  Created by 李洪峰 on 16/7/20.
//  Copyright © 2016年 Huff Leo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
///11111111111111111
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *sortedArray = @[@"0",@"1",@"1",@"3",@"5",@"6"];
    id searchObject = @"6";
    
    NSRange searchRange = NSMakeRange(0, [sortedArray count]);
    NSUInteger findIndex = [sortedArray indexOfObject:searchObject
                                        inSortedRange:searchRange
                                              options:NSBinarySearchingFirstEqual
                                      usingComparator:^(id obj1, id obj2)
                            {
                                return [obj1 compare:obj2];
                            }];
    
    NSLog(@"%lu",(unsigned long)findIndex);
    
}

@end
