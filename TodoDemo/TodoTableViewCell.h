//
//  TodoTableViewCell.h
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@interface TodoTableViewCell : UITableViewCell

@property(weak, nonatomic) Todo *todo;

@end

NS_ASSUME_NONNULL_END
