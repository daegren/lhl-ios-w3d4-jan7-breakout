//
//  AddTodoViewController.h
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AddTodoViewControllerDelegate <NSObject>

- (void)saveTodo:(Todo *)todo;

@end

@interface AddTodoViewController : UIViewController

@property(weak, nonatomic) id<AddTodoViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
