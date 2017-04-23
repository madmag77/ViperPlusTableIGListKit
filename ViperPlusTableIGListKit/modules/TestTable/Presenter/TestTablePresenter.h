//
//  TestTableTestTablePresenter.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableViewOutput.h"
#import "TestTableInteractorOutput.h"
#import "TestTableModuleInput.h"

@protocol TestTableViewInput;
@protocol TestTableInteractorInput;
@protocol TestTableRouterInput;

@interface TestTablePresenter: NSObject <TestTableModuleInput, TestTableViewOutput, TestTableInteractorOutput>

@property (nonatomic, weak) id<TestTableViewInput> view;
@property (nonatomic, strong) id<TestTableInteractorInput> interactor;
@property (nonatomic, strong) id<TestTableRouterInput> router;

@end
