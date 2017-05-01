//
//  TableCell.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableCell.h"
#import <Masonry/Masonry.h>

#define DangerousColor UIColor.greenColor
#define NormalColor UIColor.blackColor
const CGSize PrefererredCellSize = {100, 100};

@implementation TableCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    UILabel *label = [UILabel new];
    self.label = label;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.contentView.layer.borderWidth = 1.0;
    self.contentView.layer.borderColor = UIColor.redColor.CGColor;
    
    [self.contentView addSubview:label];
    
    [self.label mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];

    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)prepareForReuse {
    self.label.text = @"";
}

- (void)setCoolText:(NSString *)text {
    self.label.text = text;
}

- (void)setDangerousMode:(bool)dangerous {
    if (dangerous) {
        self.label.textColor = DangerousColor;
    } else {
        self.label.textColor = NormalColor;
    }
}

+ (CGSize)cellSize {
    return PrefererredCellSize;
}
@end
