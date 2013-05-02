//
// Created by cris on 01.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "MHPresenter.h"

@class MHLoginViewController;
@class MHAccount;


@interface MHLoginPresenter : MHPresenter {

}

@property (nonatomic, readonly) MHLoginViewController *loginViewController;

@property (nonatomic, strong) MHAccount *account;

- (void)userPressFBButton;

@end