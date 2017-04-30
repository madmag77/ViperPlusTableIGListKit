//
//  CoolTableHeaderCellInput.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

@protocol CoolTableHeaderCellDelegate <NSObject>
- (void)didLongTap;
@end

@protocol CoolTableHeaderCellInput <NSObject>
- (void)setHeaderText:(NSString *)text;
- (void)setIsSelected:(bool)selected;
- (void)setDelegateForLongTap:(id<CoolTableHeaderCellDelegate>)delegate;
@end
