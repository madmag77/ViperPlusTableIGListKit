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
#import <IGListKit/IGListKit.h>
#import "TableRowSectionController.h"
#import "TableRowHeaderSectionController.h"
#import "TableRowSectionModel.h"

@interface TestTablePresenter() <IGListAdapterDataSource>

@end

@implementation TestTablePresenter {
    IGListAdapter *_adapter;
}

#pragma mark - Internals

- (void)setAdapter:(IGListAdapter *)adapter {
    _adapter = adapter;
    adapter.dataSource = self;
}

- (IGListAdapter *)adapter {
    return _adapter;
}

#pragma mark - IGListAdapterDelegate



#pragma mark - IGListAdapterDataSource
- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return [self.interactor getAllTheData];
}

- (IGListSectionController <IGListSectionType> *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    if ([object isKindOfClass:[TableRowSectionModel class]]) return [TableRowSectionController new];
    if ([object isKindOfClass:[TableRowHeaderSectionModel class]]) return [TableRowHeaderSectionController new];
    NSAssert(false, @"Unknown object of class %@", [object class]);
    return nil;
}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}


#pragma mark - Methods TestTableModuleInput

- (void)configureModule {
  
}

#pragma mark - Methods TestTableViewOutput

- (void) viewWillApear {
    [self.interactor refreshData];
    [self.adapter performUpdatesAnimated:YES completion:nil];
}

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (void)backBtnTap {
    [self.router goBack];
}
#pragma mark - Methods TestTableInteractorOutput

@end
