//
//  CoolTableDataSource.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "CoolTableDataSource.h"
#import "TableRowSectionController.h"
#import "TableRowHeaderSectionController.h"
#import "TableRowSectionModel.h"
#import <IGListKit/IGListKit.h>

@interface CoolTableDataSource() <IGListAdapterDataSource>
@property (strong, nonatomic) IGListAdapter *adapter;
@property (strong, nonatomic) UIView *emptyView;

@end

@implementation CoolTableDataSource
@synthesize models;

- (id)initWithViewController:(UIViewController *)viewController andCollectionView:(IGListCollectionView *)collectionView andEmptyView:(UIView *)emptyView {
    self = [super init];
    if (self) {
        self.adapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:viewController workingRangeSize:0];
        self.adapter.collectionView = collectionView;
        self.emptyView = emptyView;
        self.adapter.dataSource = self;
    }
    return self;
}

- (void)updateTable {
    [self.adapter performUpdatesAnimated:NO completion:nil];
}

- (void)updateCellsWitModels:(NSArray<IGListDiffable> *)modelsToUpdate {
    [self.adapter reloadObjects:modelsToUpdate];
}

#pragma mark - IGListAdapterDataSource
- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return self.models;
}

- (IGListSectionController <IGListSectionType> *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    if ([object isKindOfClass:[TableRowSectionModel class]]) return [TableRowSectionController new];
    if ([object isKindOfClass:[TableRowHeaderSectionModel class]]) {
        TableRowHeaderSectionController *headerSection = [TableRowHeaderSectionController new];
        return headerSection;
    }
    NSAssert(false, @"Unknown object of class %@", [object class]);
    return nil;
}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return self.emptyView;
}

@end
