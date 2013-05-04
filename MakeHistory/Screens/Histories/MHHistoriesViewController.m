//
// Created by cris on 03.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MHHistoriesViewController.h"
#import "MHHistoriesPresenter.h"


@implementation MHHistoriesViewController {

}

- (void)createPresenter {

    self.presenter = [MHHistoriesPresenter new];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    
    [self performSegueWithIdentifier:@"openHistory" sender:self];
}

@end