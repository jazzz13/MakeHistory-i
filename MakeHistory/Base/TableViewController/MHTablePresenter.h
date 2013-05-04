//
// Created by cris on 04.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "MHPresenter.h"


@interface MHTablePresenter : MHPresenter

- (int)sectionsCount;

- (int)rowsCountInSection:(int)section;

- (NSString *)titleForCellByIndexPath:(NSIndexPath *)indexPath;

@end