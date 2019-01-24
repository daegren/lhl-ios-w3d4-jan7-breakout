//
//  ViewController.m
//  TodoDemo
//
//  Created by David Mills on 2019-01-24.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "ViewController.h"
#import "Todo.h"
#import "TodoTableViewCell.h"
#import "TodoDetailsViewController.h"
#import "AddTodoViewController.h"

@interface ViewController () <UITableViewDataSource, AddTodoViewControllerDelegate>

@property(weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) NSArray *todos;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.todos = @[[[Todo alloc] initWithTitle:@"Go eat lunch"
                                 description:@"DO IT NAUGH!"
                                 andPriority:5],
                 [[Todo alloc] initWithTitle:@"Go to drug store"
                                 description:@"Refil prescriptions"
                                 andPriority:4],
                 [[Todo alloc] initWithTitle:@"Go to class"
                                 description:@"Tomorrow"
                                 andPriority:3]
                 ];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  NSLog(@"%@", sender);
  if ([segue.identifier isEqualToString:@"showDetails"]) {
    TodoDetailsViewController *dvc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Todo *todo = self.todos[indexPath.row];
    dvc.todo = todo;
  } else if ([segue.identifier isEqualToString:@"showAddTodo"]) {
    AddTodoViewController *dvc = segue.destinationViewController;
    dvc.delegate = self;
  }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  return self.todos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  TodoTableViewCell *cell =
      [tableView dequeueReusableCellWithIdentifier:@"todoCell"
                                      forIndexPath:indexPath];

  cell.todo = self.todos[indexPath.row];

  return cell;
}

#pragma mark - AddTodoViewControllerDelegate

- (void)saveTodo:(Todo *)todo {
  self.todos = [self.todos arrayByAddingObject:todo];
  [self.tableView reloadData];
}


@end
