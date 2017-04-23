//
//  TestTableTestTableInteractorTests.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "TestTableInteractor_Testable.h"

#import "TestTableInteractorOutput.h"

@interface TestTableInteractorTests : XCTestCase

@property (nonatomic, strong) TestTableInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation TestTableInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[TestTableInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(TestTableInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов TestTableInteractorInput

@end
