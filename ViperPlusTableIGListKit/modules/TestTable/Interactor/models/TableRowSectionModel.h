//
//  TableRowSectionModel.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListKit.h>
#import "CoolTableCellInput.h"
#import "CoolTableHeaderCellInput.h"

@interface DataCellModel : NSObject
@property bool selected;
@property NSString *label;
- (id)initWithLabel:(NSString *)label;
@end

@interface TableRowSectionModel : NSObject <IGListDiffable>
@property NSArray<DataCellModel *> *cells;
@property NSUInteger index;
@property NSString *name;
@property CGSize cellSize;
- (id)initWithIndex:(NSUInteger)index andData:(NSArray<DataCellModel *> *)data;
- (void)setupView:(id<CoolTableCellInput>)cell atIndex:(NSInteger)index;
@end

@interface TableRowHeaderSectionModel : NSObject <IGListDiffable>
@property NSArray<DataCellModel *> *headers;
@property CGSize cellSize;

- (id)initWithRowHeight:(CGFloat)rowHeight andHeaders:(NSArray<DataCellModel *> *)headers;
- (void)setupView:(id<CoolTableHeaderCellInput>)cell atIndex:(NSInteger)index;

@end
