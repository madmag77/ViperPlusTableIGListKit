//
//  TableCell.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CoolTableCellInput.h"

@interface TableCell : UICollectionViewCell <CoolTableCellInput>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
