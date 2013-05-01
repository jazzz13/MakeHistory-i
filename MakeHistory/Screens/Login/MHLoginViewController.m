//
// Created by cris on 01.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <FacebookSDK/FacebookSDK.h>
#import "MHLoginViewController.h"


@implementation MHLoginViewController {

}

- (void)viewDidUnload {

    [self setInfoLabel:nil];
    [self setFbLoginButton:nil];

    [super viewDidUnload];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    if (FBSession.activeSession.state == FBSessionStateCreatedTokenLoaded) {

        [self openSession];

    } else {

        [_fbLoginButton setHidden:NO];
    }
}

- (void)openSession {

    NSArray *permissions = [[NSArray alloc] initWithObjects:@"email", nil];

    [FBSession openActiveSessionWithReadPermissions:permissions
                                       allowLoginUI:YES completionHandler:^(FBSession *session, FBSessionState state, NSError *error) {

        [self sessionStateChanged:session state:state error:error];
    }];

    [_fbLoginButton setHidden:YES];
    [_infoLabel setHidden:NO];
}

- (void)sessionStateChanged:(FBSession *)session
                      state:(FBSessionState)state
                      error:(NSError *)error {

    if (FBSession.activeSession.isOpen) {

        [[FBRequest requestForMe] startWithCompletionHandler:
                ^(FBRequestConnection *connection,
                        NSDictionary <FBGraphUser> *user,
                        NSError *error) {

                    if (!error) {

                        self.infoLabel.text = [NSString stringWithFormat:@"Вы: %@\nпочта: %@", user.name, [user objectForKey:@"email"]];
                    }
                }];
    }
}

- (IBAction)fbLoginButtonPress:(UIButton *)sender {

    [self openSession];
}

@end