//
//  DataCellModel.h
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 30/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface DataCellModel : NSObject
@property bool selected;
@property bool bold;
@property NSString *label;
- (id)initWithLabel:(NSString *)label;
@end
