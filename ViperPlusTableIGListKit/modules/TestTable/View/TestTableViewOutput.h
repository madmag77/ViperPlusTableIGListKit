//
//  TestTableTestTableViewOutput.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <Foundation/Foundation.h>
@class IGListAdapter;

@protocol TestTableViewOutput <NSObject>

- (void)didTriggerViewReadyEvent;
- (void)backBtnTap;
- (void)viewWillApear;

@property (weak, nonatomic) IGListAdapter *adapter;
@end
