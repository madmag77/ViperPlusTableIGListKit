//
//  CoolTableHeaderCellInput.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

@protocol CoolTableHeaderCellDelegate <NSObject>
- (void)didLongTapOnCellWithIndex:(NSUInteger)index;
@end

@protocol CoolTableHeaderCellInput <NSObject>
- (void)setHeaderText:(NSString *)text;
- (void)setIsSelected:(bool)selected;
- (void)setBold:(bool)bold;
- (void)setDelegateForLongTap:(id<CoolTableHeaderCellDelegate>)delegate andCellIndex:(NSUInteger)index;
@end
