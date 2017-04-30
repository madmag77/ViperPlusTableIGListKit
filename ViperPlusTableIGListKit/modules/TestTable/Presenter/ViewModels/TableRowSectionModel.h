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
#import "DataCellModel.h"
#import "CoolTableDataSourceProtocol.h"

@interface TableRowSectionModel : NSObject <IGListDiffable>
@property NSArray<DataCellModel *> *cells;
@property NSUInteger index;
@property NSString *name;
@property CGSize cellSize;
@property (weak, nonatomic) id<CoolTableDataSourceProtocol> dataSource;

- (id)initWithIndex:(NSUInteger)index andData:(NSArray<DataCellModel *> *)data andDataSource:(id<CoolTableDataSourceProtocol>)dataSource;
- (void)setupView:(id<CoolTableCellInput>)cell atIndex:(NSInteger)index;
@end

@interface TableRowHeaderSectionModel : NSObject <IGListDiffable>
@property NSArray<DataCellModel *> *headers;
@property CGSize cellSize;
@property (weak, nonatomic) id<CoolTableDataSourceProtocol> dataSource;

- (id)initWithRowHeight:(CGFloat)rowHeight andHeaders:(NSArray<DataCellModel *> *)headers andDataSource:(id<CoolTableDataSourceProtocol>)dataSource;
- (void)setupView:(id<CoolTableHeaderCellInput>)cell atIndex:(NSInteger)index ;
- (void)didTapOnItemAtIndex:(NSInteger)index;
@end
