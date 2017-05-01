//
//  CoolTableCellInput.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//


@protocol CoolTableCellInput <NSObject>
- (void)setCoolText:(NSString *)text;
- (void)setDangerousMode:(bool)dangerous;
@end
