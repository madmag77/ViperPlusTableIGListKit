//
//  TestTableTestTableRouter.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation TestTableRouter

#pragma mark - Методы TestTableRouterInput
-(void)goBack {
    [self.transitionHandler closeCurrentModule:YES];
}

@end
