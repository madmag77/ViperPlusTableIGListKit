//
//  TableCell.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableCell.h"
#import <Masonry/Masonry.h>

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

- (void)bindToModel:(NSString *)labelText {
    self.label.text = labelText;
}

@end
