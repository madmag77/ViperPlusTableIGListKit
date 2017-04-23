//
//  TestTableTestTableViewControllerTests.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "TestTableViewController_Testable.h"

#import "TestTableViewOutput.h"

@interface TestTableViewControllerTests : XCTestCase

@property (nonatomic, strong) TestTableViewController *controller;

@property (nonatomic, strong) id mockOutput;
@property (nonatomic, strong) id selfMock;

@end

@implementation TestTableViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[TestTableViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(TestTableViewOutput));
    self.selfMock = OCMPartialMock(self.controller);

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;
    self.selfMock = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}


#pragma mark - Тестирование методов MWSMoviesListViewOutput

- (void)testThatControllerNotifiesPresenterOnWillAppear {
    // given
    
    // when
    [self.controller viewWillAppear:NO];
    
    // then
    OCMVerify([self.mockOutput viewWillApear]);
}

- (void)testThatControllerNotifiesPresenterOnBackBtnTap {
    // given
    
    // when
    [self.controller backBtnTap];
    
    // then
    OCMVerify([self.mockOutput backBtnTap]);
}


#pragma mark - Тестирование методов интерфейса

#pragma mark - Тестирование методов TestTableViewInput

- (void)testThatControllerRunsCreateElements {
    // given
    
    // when
    [self.controller setupInitialState];
    
    // then
    OCMVerify([self.selfMock createViewElements]);
}

@end
