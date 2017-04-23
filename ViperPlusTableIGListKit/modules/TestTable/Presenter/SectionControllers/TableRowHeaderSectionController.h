//
//  TableRowHeaderSectionController.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListKit.h>
#import "TableRowSectionModel.h"

@protocol TableRowHeaderSectionDelegate
- (void)didTapOnObject:(TableRowHeaderSectionModel *)object andIndexInRow:(NSUInteger)rowIndex;

@end

@interface TableRowHeaderSectionController : IGListSectionController <IGListSectionType>
@property (weak, nonatomic) id<TableRowHeaderSectionDelegate> delegate;
@end
