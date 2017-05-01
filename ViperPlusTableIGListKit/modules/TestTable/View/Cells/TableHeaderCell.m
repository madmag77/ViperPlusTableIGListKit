//
//  TableHeaderCell.m
//  ViperPlusTableIGListKit
//
//  Created by Artem Goncharov on 23/04/2017.
//  Copyright © 2017 MadMag. All rights reserved.
//

#import "TableHeaderCell.h"
#import <Masonry/Masonry.h>

const CGSize PrefererredHeaderCellSize = {100, 50};

@interface TableHeaderCell ()
@property NSUInteger indexForCallBack;
@end

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
    
    UILongPressGestureRecognizer *longTapRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(didLongTap)];
    [self.contentView addGestureRecognizer: longTapRecognizer];
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)prepareForReuse {
    self.label.text = @"";
}


- (void)didLongTap {
    if (self.delegate) {
        [self.delegate didLongTapOnCellWithIndex:self.indexForCallBack];
    }
}

+ (CGSize)cellSize {
    return PrefererredHeaderCellSize;
}

#pragma mark - Methods CoolTableHeaderCellInput

- (void)setBold:(bool)bold {
    if (bold) {
        self.label.font = [UIFont boldSystemFontOfSize:16.0];
    } else {
        self.label.font = [UIFont systemFontOfSize:16.0];
    }
}

- (void)setHeaderText:(NSString *)text {
    self.label.text = text;
}

- (void)setIsSelected:(bool)selected {
    self.contentView.backgroundColor = selected ? UIColor.orangeColor : UIColor.lightGrayColor;
}

- (void)setDelegateForLongTap:(id<CoolTableHeaderCellDelegate>)delegate  andCellIndex:(NSUInteger)index {
    self.delegate = delegate;
    self.indexForCallBack = index;
}

@end
