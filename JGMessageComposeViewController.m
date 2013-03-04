//
//  JGMessageComposeViewController.m
//  JGMessageComposeViewController
//
//  Created by Jonah Grant on 2/24/13.
//  Copyright (c) 2013 Jonah Grant. All rights reserved.
//

#import "JGMessageComposeViewController.h"

@implementation JGMessageComposeViewController

- (id)init {
    self = [super init];
    if (self) {
        self.messageComposeDelegate = self;
    }
    return self;
}

#pragma mark - MFMessageComposeViewController delegate methods

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    if (self.resultBlock != nil) {
        _resultBlock(result);
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
