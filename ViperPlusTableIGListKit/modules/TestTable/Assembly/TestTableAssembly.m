//
//  TestTableTestTableAssembly.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableAssembly.h"

#import "TestTableViewController.h"
#import "TestTableInteractor.h"
#import "TestTablePresenter.h"
#import "TestTableRouter.h"

#import "ViperMcFlurry.h"


@implementation TestTableAssembly

- (TestTableViewController *)viewTestTableModule {
    return [TyphoonDefinition withClass:[TestTableViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTestTableModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTestTableModule]];
                          }];
}

- (TestTableInteractor *)interactorTestTableModule {
    return [TyphoonDefinition withClass:[TestTableInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTestTableModule]];
                          }];
}

- (TestTablePresenter *)presenterTestTableModule {
    return [TyphoonDefinition withClass:[TestTablePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTestTableModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTestTableModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTestTableModule]];

                          }];
}

- (TestTableRouter *)routerTestTableModule {
    return [TyphoonDefinition withClass:[TestTableRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTestTableModule]];
                          }];
}

@end
