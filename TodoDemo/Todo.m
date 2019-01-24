//
//  Todo.m
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "Todo.h"

@implementation Todo

- (instancetype)initWithTitle:(NSString *)title
                  description:(NSString *)description
                  andPriority:(NSInteger)priority {
  if (self = [super init]) {
    _title = title;
    _textDescription = description;
    _priority = priority;
    _completed = NO;
  }
  return self;
}

@end
