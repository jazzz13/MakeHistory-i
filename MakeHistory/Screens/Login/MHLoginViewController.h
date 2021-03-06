//
// Created by cris on 01.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "MHViewController.h"

@class MHLoginPresenter;


@interface MHLoginViewController : MHViewController {
}

@property(weak, nonatomic) IBOutlet UILabel *infoLabel;

@property(weak, nonatomic) IBOutlet UIButton *fbLoginButton;

- (IBAction)fbLoginButtonPress:(UIButton *)sender;

@property (nonatomic, readonly) MHLoginPresenter *loginPresenter;

- (void)disableFBButton;

@end