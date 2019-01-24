//
//  AddTodoViewController.m
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "AddTodoViewController.h"

@interface AddTodoViewController ()

@property(weak, nonatomic) IBOutlet UITextField *titleTextField;
@property(weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property(weak, nonatomic) IBOutlet UIStepper *priorityStepper;
@property(weak, nonatomic) IBOutlet UILabel *priorityLabel;

@end

@implementation AddTodoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)stepperChanged:(id)sender {
  self.priorityLabel.text = [NSString stringWithFormat:@"%0.f", self.priorityStepper.value];
}

- (IBAction)save:(id)sender {
  NSString *title = self.titleTextField.text;
  NSString *textDescription = self.descriptionTextView.text;
  NSInteger priority = (int)self.priorityStepper.value;

  Todo *newTodo = [[Todo alloc] initWithTitle:title description:textDescription andPriority:priority];

  [self.delegate saveTodo:newTodo];

  [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
  [self dismissViewControllerAnimated:YES completion:nil];
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
