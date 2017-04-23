//
//  TableRowHeaderSectionController.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableRowHeaderSectionController.h"
#import "TableRowSectionModel.h"
#import "TableHeaderCell.h"

@interface TableRowHeaderSectionController ()
@property (strong, nonatomic) TableRowHeaderSectionModel *model;
@end

@implementation TableRowHeaderSectionController
#pragma mark - Methods IGListSectionType

- (NSInteger)numberOfItems {
    if (!self.model || !self.model.headers) return 0;
    
    return self.model.headers.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    if (!self.collectionContext || !self.model || !self.model.headers || self.collectionContext.containerSize.width == 0) return CGSizeMake(0, 0);
    
    CGFloat width = self.collectionContext.containerSize.width;
    return CGSizeMake(width / self.model.headers.count, self.model.cellSize.height);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    if (!self.collectionContext || !self.model || !self.model.headers || index >= self.model.headers.count) return nil;
    
    TableHeaderCell *cell = [self.collectionContext dequeueReusableCellOfClass:[TableHeaderCell class] forSectionController:self atIndex:index];
    
    [cell bindToModel:self.model.headers[index]];
    return cell;
}

- (void)didUpdateToObject:(id)object {
    self.model = object;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    
}

@end
