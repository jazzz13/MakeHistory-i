//
// Created by cris on 01.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
@class MHPresenter;


@interface MHViewController : UIViewController {

}

@property(strong, nonatomic) MHPresenter *presenter;

- (void)createPresenter;

@end