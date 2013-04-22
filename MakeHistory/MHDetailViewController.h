//
//  MHDetailViewController.h
//  MakeHistory
//
//  Created by CRiS on 22.04.13.
//  Copyright (c) 2013 Mur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MHDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
