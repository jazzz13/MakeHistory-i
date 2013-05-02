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

    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    [self performSegueWithIdentifier:@"writeScreen" sender:self];
}

@end