//
//  TableRowSectionModel.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableRowSectionModel.h"

const CGSize DefaultCellSize = {100, 100};

@implementation TableCellModel
- (id)initWithLabel:(NSString *)label {
    self = [super init];
    if (self) {
        self.label = label;
        self.selected = false;
    }
    return self;
}

@end

@implementation TableRowSectionModel
- (id)init {
    NSAssert(false, @"Use initWithIndex instead");
    return nil;
}

- (id)initWithIndex:(NSUInteger)index andData:(NSArray<NSString *> *)data {
    self = [super init];
    if (self) {
        self.index = index;
        self.cells = data;
        self.cellSize = DefaultCellSize;
    }
    return self;
}

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return [self isEqual:object];
}

@end

@implementation TableRowHeaderSectionModel

- (id)init {
    NSAssert(false, @"Use initWithRowHeight instead");
    return nil;
}

- (id)initWithRowHeight:(CGFloat)rowHeight andHeaders:(NSArray<TableCellModel *> *)headers {
    self = [super init];
    if (self) {
        self.headers = headers;
        self.cellSize = CGSizeMake(DefaultCellSize.width, rowHeight);
    }
    return self;
}

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return [self isEqual:object];
}

@end
