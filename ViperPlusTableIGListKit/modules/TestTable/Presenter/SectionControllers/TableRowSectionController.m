//
//  TableRowSectionController.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableRowSectionController.h"
#import "TableRowSectionModel.h"
#import "TableCell.h"

@interface TableRowSectionController ()
@property (strong, nonatomic) TableRowSectionModel *model;
@end

@implementation TableRowSectionController

#pragma mark - Methods IGListSectionType

- (NSInteger)numberOfItems {
    if (!self.model ||
        !self.model.cells)  {
        return 0;
    }
    
    return self.model.cells.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    if (!self.collectionContext ||
        !self.model ||
        !self.model.cells ||
        self.collectionContext.containerSize.width == 0)  {
        return CGSizeMake(0, 0);
    }
    
    CGFloat width = self.collectionContext.containerSize.width;
    return CGSizeMake(width / self.model.cells.count, TableCell.cellSize.height);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    if (!self.collectionContext ||
        !self.model ||
        !self.model.cells ||
        index >= self.model.cells.count)  {
        return nil;
    }
    
    TableCell *cell = [self.collectionContext dequeueReusableCellOfClass:[TableCell class]
                                                    forSectionController:self
                                                                 atIndex:index];

    [self.model setupView:cell
                  atIndex:index];
    return cell;
}

- (void)didUpdateToObject:(id)object {
    self.model = object;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    //
}

@end
