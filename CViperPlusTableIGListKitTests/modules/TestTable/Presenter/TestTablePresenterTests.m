//
//  TestTableTestTablePresenterTests.m
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "TestTablePresenter_Testable.h"

#import "TestTableViewInput.h"
#import "TestTableInteractorInput.h"
#import "TestTableRouterInput.h"

#import "WaitBarProtocol.h"

@interface TestTablePresenterTests : XCTestCase

@property (nonatomic, strong) TestTablePresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;
@property (nonatomic, strong) id mockWaitObj;

@end

@implementation TestTablePresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[TestTablePresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(TestTableInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(TestTableRouterInput));
    self.mockView = OCMProtocolMock(@protocol(TestTableViewInput));
    self.mockWaitObj = OCMProtocolMock(@protocol(WaitBarProtocol));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
    self.presenter.wait = self.mockWaitObj;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;
    self.mockWaitObj = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов TestTableModuleInput

#pragma mark - Тестирование методов TestTableViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

- (void)testThatPresenterTransferBackBtnTapToRouter {
    // given

    
    // when
    [self.presenter backBtnTap];
    
    // then
    OCMVerify([self.mockRouter goBack]);
}


#pragma mark - Тестирование методов TestTableInteractorOutput

- (void)testThatPresenterTransferProgressShow {
    // given
    
    
    // when
    [self.presenter progressShow];
    
    // then
    OCMVerify([self.mockWaitObj showWaitBar]);
}

- (void)testThatPresenterTransferProgressDissmiss {
    // given
    
    
    // when
    [self.presenter progressDismiss];
    
    // then
    OCMVerify([self.mockWaitObj dissmissWaitBar]);
}

@end
