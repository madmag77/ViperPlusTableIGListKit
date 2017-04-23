//
//  TestTableTestTableViewController.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestTableViewInput.h"

@protocol TestTableViewOutput;

@interface TestTableViewController : UIViewController <TestTableViewInput>

@property (nonatomic, strong) id<TestTableViewOutput> output;

@end
