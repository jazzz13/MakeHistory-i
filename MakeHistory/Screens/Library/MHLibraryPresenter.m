//
// Created by cris on 04.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MHLibraryPresenter.h"


@implementation MHLibraryPresenter {

}

- (int)sectionsCount {

    return 1;
}

- (int)rowsCountInSection:(int)section {

    return 10;
}

- (NSString *)titleForCellByIndexPath:(NSIndexPath *)indexPath {

    return [NSString stringWithFormat:@"name book %d", indexPath.row];
}

@end