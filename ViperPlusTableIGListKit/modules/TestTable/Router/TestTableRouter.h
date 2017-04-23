//
//  TestTableTestTableRouter.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface TestTableRouter : NSObject <TestTableRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
