//
// Created by cris on 01.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MHLoginPresenter.h"
#import "MHLoginViewController.h"
#import "MHAccount.h"


@implementation MHLoginPresenter {

}

@synthesize account;

- (id)init {

    self = [super init];

    self.account = [MHAccount account];

    return self;
}

- (void)dealloc {

    self.account = nil;
}

- (MHLoginViewController *)loginViewController {

    return (MHLoginViewController *) self.viewController;
}

- (void)userPressFBButton {

    [self.account startLogin];

    [self.loginViewController disableFBButton];
}

@end