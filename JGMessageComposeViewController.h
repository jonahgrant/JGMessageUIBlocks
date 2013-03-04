//
//  JGMessageComposeViewController.h
//  JGMessageComposeViewController
//
//  Created by Jonah Grant on 2/24/13.
//  Copyright (c) 2013 Jonah Grant. All rights reserved.
//

#import <MessageUI/MessageUI.h>

typedef void (^JGMessageComposeViewControllerBlock)(MessageComposeResult result);

@interface JGMessageComposeViewController : MFMessageComposeViewController <MFMessageComposeViewControllerDelegate>

/**
 Opon a a result, this block will be called with the result
 */
@property (copy, nonatomic) JGMessageComposeViewControllerBlock resultBlock;

@end