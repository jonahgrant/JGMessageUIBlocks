JGMessageUIBlocks
=================

Subclasses for MessageUI controllers (Mail & Messages) that allow blocks instead of delegate methods

For Mail:
```
JGMailComposeViewController *mailComposer = [[JGMailComposeViewController alloc] init]
                                          [mailComposer setToRecipients:@[@"jonah@jonahgrant.com"]];
                                          [mailComposer setSubject:@"What's your deal, dude?"];
                                          [self presentViewController:mailComposer animated:YES completion:NULL];
                                          [mailComposer setResultBlock:^(MFMailComposeResult result) {
                                              switch (result) {
                                                  case MFMailComposeResultSent:
                                                      break;
                                                  case MFMailComposeResultSaved:
                                                      break;
                                                  case MFMailComposeResultCancelled:
                                                      break;
                                                  case MFMailComposeResultFailed:
                                                      break;
                                                  default:
                                                      break;
                                              }
                                          }];
```
                                          
For Messages:
```
    JGMessageComposeViewController *controller = [[JGMessageComposeViewController alloc] init];
                                          [controller setResultBlock:^(MessageComposeResult result) {
                                              switch (result) {
                                                  case MessageComposeResultSent:
                                                      break;
                                                  case MessageComposeResultCancelled:
                                                      break;
                                                  case MessageComposeResultFailed:
                                                      break;
                                                  default:
                                                      break;
                                              }
                                           }];
                                           [controller setRecipients:@[@"555-555-5555"]];
                                           [self presentViewController:controller animated:YES completion:NULL];
                                          }
```

Fuckin' delegates, dude.
