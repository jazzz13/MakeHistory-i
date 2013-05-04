//
// Created by cris on 04.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "MHViewController.h"

@class MHTablePresenter;


@interface MHTableViewController : MHViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readonly) MHTablePresenter *tablePresenter;

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end