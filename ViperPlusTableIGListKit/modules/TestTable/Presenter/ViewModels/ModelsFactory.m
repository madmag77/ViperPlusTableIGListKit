//
//  ModelsFactory.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "ModelsFactory.h"
#import "TableRowSectionModel.h"

@implementation ModelsFactory
+ (id<IGListDiffable>)getHeaderModelWithData:(NSArray<DataCellModel *> *)data
                               andDataSource:(id<CoolTableDataSourceProtocol>)dataSource {
    return [[TableRowHeaderSectionModel alloc] initWithHeaders:data
                                                 andDataSource:dataSource];
}

+ (id<IGListDiffable>)getCellModelWithData:(NSArray<DataCellModel *> *)data
                                  andIndex:(NSUInteger)index
                             andDataSource:(id<CoolTableDataSourceProtocol>)dataSource {
    return [[TableRowSectionModel alloc] initWithIndex:index
                                               andData:data
                                         andDataSource:dataSource];
}
@end
