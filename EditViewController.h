//
//  EditViewController.h
//  WickedToDo
//
//  Created by Craig Pellegrini on 5/8/13.
//  Copyright (c) 2013 craigeryp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditingDelegate.h"

@interface EditViewController : UIViewController


- (IBAction)changeToDoButton:(id)sender;


@property (strong, nonatomic) id <EditingDelegate> editingDelegate;

@property (strong, nonatomic) IBOutlet UITextField *editTextField;
@property (strong, nonatomic) NSIndexPath* indexPath;


@end
 