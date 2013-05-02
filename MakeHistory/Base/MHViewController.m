//
// Created by cris on 01.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MHViewController.h"
#import "MHPresenter.h"


@implementation MHViewController {

}

- (void)viewDidLoad {

    [super viewDidLoad];

    [self createPresenter];

    self.presenter.viewController = self;
}

- (void)createPresenter {

    NSLog(@"MHViewController FAIL createPresenter");
}

@end