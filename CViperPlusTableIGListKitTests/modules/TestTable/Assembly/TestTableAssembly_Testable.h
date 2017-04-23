//
//  TestTableTestTableAssembly_Testable.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableAssembly.h"

@class TestTableViewController;
@class TestTableInteractor;
@class TestTablePresenter;
@class TestTableRouter;

@interface TestTableAssembly ()

- (TestTableViewController *)viewTestTableModule;
- (TestTablePresenter *)presenterTestTableModule;
- (TestTableInteractor *)interactorTestTableModule;
- (TestTableRouter *)routerTestTableModule;

@end
