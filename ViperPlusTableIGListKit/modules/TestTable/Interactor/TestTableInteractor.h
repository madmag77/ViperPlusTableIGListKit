//
//  TestTableTestTableInteractor.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import "TestTableInteractorInput.h"


@protocol TestTableInteractorOutput;

@interface TestTableInteractor : NSObject <TestTableInteractorInput>

@property (nonatomic, weak) id<TestTableInteractorOutput> output;

@end
