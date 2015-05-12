//
//  Item.m
//  RandomItems
//
//  Created by JIAN WANG on 5/11/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Item.h"

@implementation Item

-(instancetype)initWithItemName:(NSString *)itemName valueInDollars:(int)value serialNumber:(NSString *)serialNumber {
    self = [super self];
    
    if (self) {
        _itemName = itemName;
        _valueInDollars = value;
        _serialNumber = serialNumber;
        _dateCreated =[[NSDate alloc] init];
    }
    
    return self;
}

-(instancetype)initWithItemName:(NSString *)itemName {
    return [self initWithItemName:itemName valueInDollars:0 serialNumber:@""];
}

-(instancetype)init {
    return [self initWithItemName:@"Item"];
}

-(NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth %d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

@end
