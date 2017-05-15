//
//  CoolTableDataSource.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoolTableDataSourceProtocol.h"

@class UIViewController;
@class UICollectionView;
@class UIView;

@interface CoolTableDataSource : NSObject<CoolTableDataSourceProtocol>
- (id)initWithViewController:(UIViewController *)viewController
           andCollectionView:(UICollectionView *)collectionView
                andEmptyView:(UIView *)emptyView;
@end
