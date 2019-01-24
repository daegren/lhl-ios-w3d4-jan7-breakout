//
//  Todo.h
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Todo : NSObject

@property(strong, nonatomic) NSString *title;
@property(strong, nonatomic) NSString *textDescription;
@property(assign, nonatomic) NSInteger priority;
@property(assign, nonatomic) BOOL completed;

- (instancetype)initWithTitle:(NSString *)title description:(NSString *)description andPriority:(NSInteger)priority;

@end

NS_ASSUME_NONNULL_END
