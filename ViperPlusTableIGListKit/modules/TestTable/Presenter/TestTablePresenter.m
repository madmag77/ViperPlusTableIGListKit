//
//  TestTableTestTablePresenter.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTablePresenter.h"
#import "TestTableViewInput.h"
#import "TestTableInteractorInput.h"
#import "TestTableRouterInput.h"
#import "CoolTableDataSource.h"
#import "TableRowSectionModel.h"
#import "ModelsFactory.h"

@interface TestTablePresenter()
@property (readonly) id<CoolTableDataSourceProtocol> dataSource;
@end

@implementation TestTablePresenter

#pragma mark - Internals

- (id<CoolTableDataSourceProtocol>)dataSource {
    return [self.view getDataSource];
}

#pragma mark - Methods TestTableModuleInput
- (void)configureModule {
  
}

#pragma mark - Methods TestTableViewOutput
- (void) viewWillApear {
    [self.interactor refreshData];
}

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (void)backBtnTap {
    [self.router goBack];
}

#pragma mark - Methods TestTableInteractorOutput
- (void)dataUpdated:(NSArray *)data {
    NSMutableArray<IGListDiffable> *models = [@[] mutableCopy];
    [models addObject:[ModelsFactory getHeaderModelWithData:@[
                                                              [[DataCellModel alloc] initWithLabel:@"First"],
                                                              [[DataCellModel alloc] initWithLabel:@"Second"],
                                                              [[DataCellModel alloc] initWithLabel:@"Third"],
                                                              [[DataCellModel alloc] initWithLabel:@"Fours"]] andRowHeight:50.0 andDataSource:self.dataSource]];
    [data enumerateObjectsUsingBlock:^(NSArray *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [models addObject:[ModelsFactory getCellModelWithData:obj andIndex:idx andDataSource:self.dataSource]];
    }];
    
    self.dataSource.models = models;
    [self.dataSource updateTable];
}
@end
