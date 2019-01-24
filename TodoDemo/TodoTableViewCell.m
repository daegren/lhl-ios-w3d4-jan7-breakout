//
//  TodoTableViewCell.m
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "TodoTableViewCell.h"

@interface TodoTableViewCell ()

@property(weak, nonatomic) IBOutlet UILabel *titleLabel;
@property(weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property(weak, nonatomic) IBOutlet UILabel *priorityLabel;

@end

@implementation TodoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTodo:(Todo *)todo {
  _todo = todo;

  self.titleLabel.text = todo.title;
  self.descriptionLabel.text = todo.textDescription;
  self.priorityLabel.text = [NSString stringWithFormat:@"%li", todo.priority];
}

@end
