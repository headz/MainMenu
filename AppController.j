/*
 * AppController.j
 * UserBindings
 *
 * Created by You on April 11, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{

    CPLog.debug(@"%s %s self :  %@",[self class],_cmd,self);
    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}


- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things. 
    
    // In this case, we want the window from Cib to become our full browser window
    CPLog.debug(@"%s %s  theWindow :  %@",[self class],_cmd, theWindow);
    [theWindow setFullBridge:YES];
}
@end
