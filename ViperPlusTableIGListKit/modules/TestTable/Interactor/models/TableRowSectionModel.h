//
//  TableRowSectionModel.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListKit.h>

@interface TableRowSectionModel : NSObject <IGListDiffable>
@property NSArray<NSString *> *cells;
@property NSUInteger index;
@property NSString *name;
@property CGSize cellSize;
- (id)initWithIndex:(NSUInteger)index andData:(NSArray<NSString *> *)data;
@end
