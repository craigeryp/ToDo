//
//  ViewController.h
//  WickedToDo
//
//  Created by Craig Pellegrini on 5/8/13.
//  Copyright (c) 2013 craigeryp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditingDelegate.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, EditingDelegate>

- (IBAction)addToDoButton:(id)sender;



@property (strong, nonatomic) IBOutlet UITextField *myTextField;
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) IBOutlet NSMutableArray *toDoListArray;



@end
