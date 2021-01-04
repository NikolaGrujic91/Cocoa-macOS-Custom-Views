//
//  AppDelegate.h
//  Cocoa Custom Views
//
//  Created by Nikola Grujic on 04/01/2021.
//

#import <Cocoa/Cocoa.h>
#import "CustomViewTop.h"
#import "CustomViewBottom.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    CustomViewTop* customViewTop;
    CustomViewBottom* customViewBottom;
}

@property (strong) IBOutlet NSStackView* stackView;

- (void) setCustomViewTop;
- (void) setCustomViewBottom;

@end

