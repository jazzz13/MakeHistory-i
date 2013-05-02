//
// Created by cris on 02.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <FacebookSDK/FacebookSDK.h>
#import "MHAccount.h"


@implementation MHAccount {
}


+ (MHAccount *)account {

    static MHAccount *account;

    @synchronized (self) {

        if (!account) {

            account = [self new];
        }
    }

    return account;
}

- (id)init {

    self = [super init];

    [self initFB];

    return self;
}

- (void)initFB {

    if (FBSession.activeSession.state == FBSessionStateCreatedTokenLoaded) {

        [self openSession];
    }
}

- (BOOL)isLogin {

    return FBSession.activeSession.state == FBSessionStateOpen || FBSession.activeSession.state == FBSessionStateCreatedTokenLoaded;
}

- (void)openSession {

    [FBSession openActiveSessionWithReadPermissions:nil allowLoginUI:YES completionHandler:^(FBSession *session, FBSessionState state, NSError *error) {

        [self sessionStateChanged:session state:state error:error];
    }];
}

- (void)sessionStateChanged:(FBSession *)session
                      state:(FBSessionState)state
                      error:(NSError *)error {


}

- (void)startLogin {

    [self openSession];
}

@end