//
// Created by cris on 02.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//

typedef enum {

    MHAccountStatusUnLogin = 0,
    MHAccountStatusPreLogin = 1,
    MHAccountStatusFullLogin = 2,

} MHAccountStatus;

#import <Foundation/Foundation.h>


@interface MHAccount : NSObject

+ (MHAccount *)account;

- (BOOL)isLogin;

- (void)startLogin;

@end