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
        /*
        for (int i = 0; i < 10; i++) {
            [items addObject:[Item randomItem]];
        }
         */
        
        Item *backpack = [[Item alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        Item *calculator = [[Item alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
    }
    return 0;
}
