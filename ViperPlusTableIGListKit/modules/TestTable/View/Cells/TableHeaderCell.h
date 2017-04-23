//
//  TableHeaderCell.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableHeaderCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)bindToModel:(NSString *)labelText;

@end
