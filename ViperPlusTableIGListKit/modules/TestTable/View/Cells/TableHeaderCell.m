//
//  TableHeaderCell.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableHeaderCell.h"
#import <Masonry/Masonry.h>

@implementation TableHeaderCell
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    UILabel *label = [UILabel new];
    self.label = label;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.font = [UIFont systemFontOfSize:18];
    self.label.textColor = UIColor.cyanColor;
    self.contentView.backgroundColor = UIColor.lightGrayColor;
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

- (void)bindToModel:(NSString *)labelText andSelected:(bool)selected {
    self.contentView.backgroundColor = selected ? UIColor.orangeColor : UIColor.lightGrayColor;
    self.label.text = labelText;
}

@end
