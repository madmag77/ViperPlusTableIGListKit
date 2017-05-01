//
//  DataCellModel.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "DataCellModel.h"

@implementation DataCellModel
- (id)initWithLabel:(NSString *)label {
    self = [super init];
    if (self) {
        self.label = label;
        self.selected = NO;
    }
    return self;
}

@end

