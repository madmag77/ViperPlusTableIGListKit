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
#import "CoolTableDataSource.h"

@interface TestTableViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) CoolTableDataSource *dataSource;
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
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                              collectionViewLayout: [UICollectionViewFlowLayout new]];
    self.collectionView = collection;
    self.collectionView.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:collection];
    
    self.dataSource = [[CoolTableDataSource alloc] initWithViewController:self
                                                        andCollectionView:collection andEmptyView:nil];
        
}
#pragma mark - Methods TestTableViewInput

- (void)setupInitialState {
    [self createViewElements];
}

- (id<CoolTableDataSourceProtocol>)getDataSource {
    return self.dataSource;
}

@end
