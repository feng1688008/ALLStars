//
//  ViewController.m
//  快排
//
//  Created by 李洪峰 on 16/7/20.
//  Copyright © 2016年 Huff Leo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *originalArray= @[@3,@4,@2,@231,@45,@32,@34435,@121];
    
    NSArray *sortedArray = [originalArray sortedArrayUsingComparator:^(NSNumber *number1,NSNumber *number2) {
        
        int val1 = [number1 intValue];
        
        int val2 = [number2 intValue];
        
        if (val1 > val2) {
            
          return  NSOrderedAscending; //降序
            
        } else {
            
            return NSOrderedDescending; //升序
            
        }
        
    }];
    
        NSLog(@"%@", sortedArray);
    
}


@end
