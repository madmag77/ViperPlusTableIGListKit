//
//  TestTableTestTableInteractor.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableInteractor.h"

#import "TestTableInteractorOutput.h"
#import "TableRowSectionModel.h"

@interface TestTableInteractor()
@property (strong, nonatomic) NSArray<TableRowSectionModel *> *data;
@end

@implementation TestTableInteractor

#pragma mark - Methods TestTableInteractorInput

- (NSArray<id<IGListDiffable>> *)getAllTheData {
    NSMutableArray<TableRowSectionModel *> *sortedData = [@[[[TableRowHeaderSectionModel alloc]  initWithRowHeight:50.0 andHeaders: @[
                            [[TableCellModel alloc] initWithLabel: @"4-1"],
                            [[TableCellModel alloc] initWithLabel: @"4-2"],
                            [[TableCellModel alloc] initWithLabel: @"4-3"],
                            [[TableCellModel alloc] initWithLabel: @"4-4"]]]] mutableCopy];
    [sortedData addObjectsFromArray:[self.data sortedArrayUsingComparator:^NSComparisonResult(TableRowSectionModel *obj1, TableRowSectionModel *obj2) {
        if (obj1.index < obj2.index) return NSOrderedAscending;
        if (obj1.index > obj2.index) return NSOrderedDescending;
        return NSOrderedSame;
    }]];
    return sortedData;
}

- (void)refreshData {
    self.data = @[
                  [[TableRowSectionModel alloc] initWithIndex:4 andData:@[@"4-1", @"4-2", @"4-3", @"4-4"]],
                  [[TableRowSectionModel alloc] initWithIndex:1 andData:@[@"1-1", @"1-2", @"1-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:2 andData:@[@"2-1", @"2-2", @"2-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:0 andData:@[@"0-1-2-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:5 andData:@[@"5-1", @"5-2"]],
                  [[TableRowSectionModel alloc] initWithIndex:3 andData:@[@"3-1", @"3-2", @"3-3"]],
                  ];
}


@end
