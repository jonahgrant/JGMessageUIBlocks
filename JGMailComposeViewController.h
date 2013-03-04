//
//  JGMailComposeViewController.h
//  JGMailComposeViewController
//
//  Created by Jonah Grant on 2/24/13.
//  Copyright (c) 2013 Jonah Grant. All rights reserved.
//

#import <MessageUI/MessageUI.h>

typedef void (^JGMailComposeViewControllerBlock)(MFMailComposeResult result);

@interface JGMailComposeViewController : MFMailComposeViewController <MFMailComposeViewControllerDelegate>

/**
 Opon a a result, this block will be called with the result
 */
@property (copy, nonatomic) JGMailComposeViewControllerBlock resultBlock;

@end
