//
//  ModelsFactory.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataCellModel.h"
#import "CoolTableDataSourceProtocol.h"

@protocol IGListDiffable;

@interface ModelsFactory : NSObject
+ (id<IGListDiffable>)getHeaderModelWithData:(NSArray<DataCellModel *> *)data
                               andDataSource:(id<CoolTableDataSourceProtocol>)dataSource;

+ (id<IGListDiffable>)getCellModelWithData:(NSArray<DataCellModel *> *)data
                                  andIndex:(NSUInteger)index
                             andDataSource:(id<CoolTableDataSourceProtocol>)dataSource;
@end
