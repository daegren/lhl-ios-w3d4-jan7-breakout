//
//  TodoDetailsViewController.m
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "TodoDetailsViewController.h"

@interface TodoDetailsViewController ()

@property(weak, nonatomic) IBOutlet UILabel *titleLabel;
@property(weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property(weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property(weak, nonatomic) IBOutlet UILabel *completedLabel;

@end

@implementation TodoDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

  self.titleLabel.text = self.todo.title;
  self.descriptionLabel.text = self.todo.textDescription;
  self.priorityLabel.text = [NSString stringWithFormat:@"%li", self.todo.priority];
  self.completedLabel.text = self.todo.completed ? @"Completed" : @"Incomplete";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
