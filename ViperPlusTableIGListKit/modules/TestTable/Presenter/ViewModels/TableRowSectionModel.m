//
//  TableRowSectionModel.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableRowSectionModel.h"


@implementation TableRowSectionModel
- (id)init {
    NSAssert(NO, @"Use initWithIndex instead");
    return nil;
}

- (id)initWithIndex:(NSUInteger)index
            andData:(NSArray<DataCellModel *> *)data
      andDataSource:(id<CoolTableDataSourceProtocol>)dataSource {
    self = [super init];
    if (self) {
        self.index = index;
        self.cells = data;
        self.dataSource = dataSource;
    }
    return self;
}

- (void)setupView:(id<CoolTableCellInput>)cell
          atIndex:(NSInteger)index {
    
    DataCellModel *cellModel = self.cells[index];
    [cell setCoolText:cellModel.label];
    [cell setDangerousMode:arc4random_uniform(2) == 1];
}

#pragma mark - Methods IGListDiffable

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return [self isEqual:object];
}

@end

@implementation TableRowHeaderSectionModel

- (id)init {
    NSAssert(NO, @"Use initWithRowHeight instead");
    return nil;
}

- (id)initWithHeaders:(NSArray<DataCellModel *> *)headers
        andDataSource:(id<CoolTableDataSourceProtocol>)dataSource {
    self = [super init];
    if (self) {
        self.headers = headers;
        self.dataSource = dataSource;
    }
    return self;
}

- (void)setupView:(id<CoolTableHeaderCellInput>)cell
          atIndex:(NSInteger)index {
    NSAssert(index <  self.headers.count, @"index in setupView is out of bounds");
   
    DataCellModel *cellModel = self.headers[index];
    [cell setHeaderText:cellModel.label];
    [cell setIsSelected:cellModel.selected];
    [cell setBold:cellModel.bold];
    [cell setDelegateForLongTap:self andCellIndex:index];
}

- (void)didTapOnItemAtIndex:(NSInteger)index {
    self.headers[index].selected = !self.headers[index].selected;
    [self.dataSource updateCellsWitModels:(NSArray<IGListDiffable> *)(@[self])];
}

#pragma mark - Methods CoolTableHeaderCellDelegate

- (void)didLongTapOnCellWithIndex:(NSUInteger)index {
    NSAssert(index <  self.headers.count, @"index in didLongTapOnCellWithIndex is out of bounds");
    
    self.headers[index].bold = !self.headers[index].bold;
    [self.dataSource updateCellsWitModels:(NSArray<IGListDiffable> *)(@[self])];
}

#pragma mark - Methods IGListDiffable

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return [self isEqual:object];
}

@end
