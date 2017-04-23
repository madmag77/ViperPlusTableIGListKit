//
//  TestTableTestTableInteractorInput.h
//  ViperPlusTableIGListKit
//
//  Created by Artem on 23/04/2017.
//  Copyright © 2017 ViperPlusTableIGListKit. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol IGListDiffable;

@protocol TestTableInteractorInput <NSObject>
- (NSArray<id <IGListDiffable>> *)getAllTheData;
- (void)refreshData;
@end
