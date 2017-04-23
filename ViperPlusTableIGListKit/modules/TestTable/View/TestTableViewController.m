//
//  TestTableTestTableViewController.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableViewController.h"
#import "TestTableViewOutput.h"
#import "Masonry.h"
#import <IGListKit/IGListKit.h>

@interface TestTableViewController ()
@property (weak, nonatomic) IBOutlet IGListCollectionView *collectionView;
@property (strong, nonatomic) IGListAdapter *adapter;

@end

@implementation TestTableViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.output viewWillApear];   
}

- (void)updateViewConstraints {
    [self.collectionView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(10);
        make.right.equalTo(self.view).with.offset(-10);
        make.top.equalTo(self.view).with.offset(30);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
    [super updateViewConstraints];
}

#pragma mark - UI callbacks
-(void)backBtnTap {
    [self.output backBtnTap];
}

#pragma mark - Misc functions
- (void) createViewElements {
    IGListCollectionView *collection = [[IGListCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout: [UICollectionViewFlowLayout new]];
    self.collectionView = collection;
    [self.view addSubview:collection];
    
    self.adapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:self workingRangeSize:0];
    self.adapter.collectionView = collection;
    self.output.adapter = self.adapter;
    
}
#pragma mark - Methods TestTableViewInput

- (void)setupInitialState {
    [self createViewElements];
}



@end
