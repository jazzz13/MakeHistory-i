//
// Created by cris on 03.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MHHistoriesPresenter.h"


@implementation MHHistoriesPresenter {

}

- (int)sectionsCount {

    return 1;
}

- (int)rowsCountInSection:(int)section {

    return 5;
}

- (NSString *)titleForCellByIndexPath:(NSIndexPath *)indexPath {

    return [NSString stringWithFormat:@"name history %d", indexPath.row];
}

@end