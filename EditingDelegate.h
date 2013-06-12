//
//  EditingDelegate.h
//  WickedToDo
//
//  Created by Craig Pellegrini on 5/8/13.
//  Copyright (c) 2013 craigeryp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EditingDelegate <NSObject>

-(void) changeToDoText: (NSString*) newToDoText atIndexPath: (NSIndexPath*) indexPath;

@end
