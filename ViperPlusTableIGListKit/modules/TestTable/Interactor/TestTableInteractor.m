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
    return self.data;
}

- (void)refreshData {
    self.data = @[
                  [[TableRowSectionModel alloc] initWithIndex:0 andData:@[@"1-1", @"1-2", @"1-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:1 andData:@[@"2-1", @"2-2", @"2-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:2 andData:@[@"3-1", @"3-2", @"3-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:3 andData:@[@"4-1-2-3"]],
                  [[TableRowSectionModel alloc] initWithIndex:3 andData:@[@"5-1", @"5-2"]],
                  [[TableRowSectionModel alloc] initWithIndex:2 andData:@[@"6-1", @"6-2", @"6-3"]],
                  ];
}
@end
