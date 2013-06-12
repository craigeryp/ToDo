//
//  EditViewController.m
//  WickedToDo
//
//  Created by Craig Pellegrini on 5/8/13.
//  Copyright (c) 2013 craigeryp. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeToDoButton:(id)sender {
    [self.editingDelegate changeToDoText:self.editTextField.text
                             atIndexPath:self.indexPath];
}
@end
