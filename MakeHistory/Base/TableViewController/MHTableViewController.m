//
// Created by cris on 04.05.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MHTableViewController.h"
#import "MHTablePresenter.h"


@implementation MHTableViewController {

}

@synthesize tableView;

- (void)createPresenter {

    self.presenter = [MHTablePresenter new];
}

- (MHTablePresenter *)tablePresenter {
    
    return (MHTablePresenter *)self.presenter;
}

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return [self.tablePresenter sectionsCount];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.tablePresenter rowsCountInSection:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [UITableViewCell new];

    cell.textLabel.text = [self.tablePresenter titleForCellByIndexPath:indexPath];

    return cell;
}

@end