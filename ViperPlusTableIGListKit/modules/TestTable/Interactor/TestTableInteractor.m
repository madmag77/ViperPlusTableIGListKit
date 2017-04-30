//
//  TestTableTestTableInteractor.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableInteractor.h"
#import "TestTableInteractorOutput.h"
#import "DataCellModel.h"

@interface TestTableInteractor()
@end

@implementation TestTableInteractor

#pragma mark - Methods TestTableInteractorInput
- (void)refreshData {
    NSArray<NSArray<DataCellModel *> *> *data = @[
                  @[
                      [[DataCellModel alloc] initWithLabel:@"0-1-2-3"]
                      ],
                  @[
                      [[DataCellModel alloc] initWithLabel:@"1-1"],
                      [[DataCellModel alloc] initWithLabel:@"1-2"],
                      [[DataCellModel alloc] initWithLabel:@"1-3"]
                      ],
                  @[
                      [[DataCellModel alloc] initWithLabel:@"2-1"],
                      [[DataCellModel alloc] initWithLabel:@"2-2"],
                      [[DataCellModel alloc] initWithLabel:@"2-3"]
                      ],
                  @[
                      [[DataCellModel alloc] initWithLabel:@"3-1"],
                      [[DataCellModel alloc] initWithLabel:@"3-2"],
                      [[DataCellModel alloc] initWithLabel:@"3-3"]
                      ],
                  @[
                      [[DataCellModel alloc] initWithLabel:@"4-1"],
                      [[DataCellModel alloc] initWithLabel:@"4-2"],
                      [[DataCellModel alloc] initWithLabel:@"4-3"],
                      [[DataCellModel alloc] initWithLabel:@"4-4"]
                  ],
                  @[
                      [[DataCellModel alloc] initWithLabel:@"5-1"],
                      [[DataCellModel alloc] initWithLabel:@"5-2"]
                  ],
                ];
    
    [self.output dataUpdated:data];
}


@end
