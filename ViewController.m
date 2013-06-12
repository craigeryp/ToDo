//
//  ViewController.m
//  WickedToDo
//
//  Created by Craig Pellegrini on 5/8/13.
//  Copyright (c) 2013 craigeryp. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.toDoListArray = [[NSMutableArray alloc] initWithObjects:[NSMutableArray array], [NSMutableArray array], nil];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addToDoButton:(id)sender
{
    
    if ([self.myTextField.text isEqual:@""]) {}
    
    else {
    NSString *textFieldString = self.myTextField.text;
    NSMutableArray *toDoArray = self.toDoListArray[0];
     NSLog(@"%@", textFieldString);
    [toDoArray addObject:textFieldString];
    NSLog(@"%@", toDoArray);
    }
    
    self.myTextField.text = nil;
    [self.myTableView reloadData];
}



  #pragma - UITableView Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //for this app we will have two sections: to do and completed
    return 2;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [self.toDoListArray[section]count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = @"myIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = self.toDoListArray[indexPath.section][indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
    }


//from apple examples and documentation
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [tableView deselectRowAtIndexPath:indexPath animated:NO];
//    BATTrailsViewController *trailsController = [[BATTrailsViewController alloc] initWithStyle:UITableViewStylePlain];
//    trailsController.selectedRegion = [regions objectAtIndex:indexPath.row];
//    [[self navigationController] pushViewController:trailsController animated:YES];
//    [trailsController release];
//}



- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    
    //copy and paste from the did select row at index

    NSLog(@"i just hit accessory button");
    
    EditViewController *editViewController = [[EditViewController alloc] initWithNibName:@"EditViewController" bundle:nil];
    editViewController.editingDelegate = self;
    editViewController.indexPath = indexPath;
    [self.navigationController pushViewController:editViewController animated:YES];

}


    
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
    
    {
        
        if (section == 0) {
            return @"To Do";
        }
        
        else if (section == 1) {
            return @"Complete";
        }
        else  {return @"";}
    }
        
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    EditViewController *editViewController = [[EditViewController alloc] initWithNibName:@"EditViewController" bundle:nil];
//    [self.navigationController pushViewController:editViewController animated:YES];
//    
// 
//
//    editViewController.editingDelegate = self;
//    editViewController.indexPath = indexPath;

}

-(void) changeToDoText: (NSString*) newToDoText atIndexPath: (NSIndexPath*) indexPath;
{
    
    self.toDoListArray [indexPath.section][indexPath.row] = newToDoText;
    
    [self.myTableView reloadRowsAtIndexPaths:[NSArray arrayWithObject: indexPath] withRowAnimation:(UITableViewRowAnimationAutomatic)];
    
    //don't forget to pop the editView off the screen once edited
    [self.navigationController popToViewController:self animated:YES];

      };
      

@end
