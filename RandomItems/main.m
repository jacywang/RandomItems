//
//  main.m
//  RandomItems
//
//  Created by JIAN WANG on 5/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items addObject:@"Four"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        Item *item = [[Item alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        NSLog(@"%@", item);
        
        Item *itemWithName = [[Item alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        Item *itemWithNoName = [[Item alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        // items = nil;
    }
    return 0;
}
