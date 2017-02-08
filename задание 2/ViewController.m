//
//  ViewController.m
//  задание 2
//
//  Created by стен on 01.02.17.
//  Copyright (c) 2017 стен. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    User *user1 = [[User alloc] init];
    
    [user1 setFirstName:@"Stepan"];
    user1.lastName = @"Petrov";
    [user1 setAge:@15];
    
    
    User *user2 = [[User alloc] init];
    
    [user2 setFirstName:@"Oleg"];
    user2.lastName = @"Fedorov";
    [user2 setAge:@30];
    
    
    User *user3 = [[User alloc] init];
    
    [user3 setFirstName:@"Ivan"];
    user3.lastName = @"Ivanov";
    [user3 setAge:@17];
    
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects: user1, user2, user3, nil];
    
    for(int i = 0; i<array.count; i++)
    {
        if([[[array objectAtIndex:i] age] integerValue] < 18)
            [array removeObjectAtIndex:i];
    }
    
   NSArray *sortArray = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        if ([[obj1 lastName] isEqual:[obj2 lastName]])
        {
            return [[obj1 firstName] compare:[obj2 firstName]];
        }
        else
        {
            return [[obj1 lastName] compare:[obj2 lastName]];
        }
    }];
    
    
    
    
    for (id a in sortArray) {
        NSLog(@"name = %@, Lastname= %@, age = %ld", [a firstName], [a lastName], (long)[[a age] integerValue]);
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
