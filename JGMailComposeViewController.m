//
//  JGMailComposeViewController.m
//  JGMailComposeViewController
//
//  Created by Jonah Grant on 2/24/13.
//  Copyright (c) 2013 Jonah Grant. All rights reserved.
//

#import "JGMailComposeViewController.h"

@implementation JGMailComposeViewController

- (id)init {
    if ([super init]) {
        self.mailComposeDelegate = self;
    }
    return self;
}

#pragma mark - MFMailComposeViewController Delegate Methods

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    if (self.resultBlock != nil) {
        _resultBlock(result);
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
