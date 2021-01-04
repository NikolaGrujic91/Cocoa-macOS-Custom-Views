//
//  AppDelegate.m
//  Cocoa Custom Views
//
//  Created by Nikola Grujic on 04/01/2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

#pragma mark - View lifecycle

- (id)init
{
    return self;
}

- (void)awakeFromNib
{
    [self setCustomViewTop];
    [self setCustomViewBottom];
}

#pragma mark - Helper Methods

- (void) setCustomViewTop
{
    customViewTop = [[CustomViewTop alloc] init];
    
    NSView* view = [customViewTop view];
    [_stackView replaceSubview:[_stackView arrangedSubviews][0]
                          with: view];
}

- (void) setCustomViewBottom
{
    customViewBottom = [[CustomViewBottom alloc] init];
    
    NSView* view = [customViewBottom view];
    [_stackView replaceSubview:[_stackView arrangedSubviews][1]
                          with: view];
}

@end
