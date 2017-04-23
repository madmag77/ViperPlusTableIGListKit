//
//  TestTableTestTableRouterTests.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "TestTableRouter.h"

@interface TestTableRouterTests : XCTestCase

@property (nonatomic, strong) TestTableRouter *router;

@end

@implementation TestTableRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[TestTableRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
