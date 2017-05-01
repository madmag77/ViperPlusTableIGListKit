//
//  CoolTableDataSourceProtocol.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//
@protocol IGListDiffable;

@protocol CoolTableDataSourceProtocol <NSObject>
@property (nonatomic, copy) NSArray<IGListDiffable> *models;
- (void)updateTable;
- (void)updateCellsWitModels:(NSArray<IGListDiffable> *)models;
@end
