//
//  ViewController.h
//  DropDownWithTableView
//
//  Created by New User on 11/10/15.
//  Copyright © 2015 Linh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btnSelect;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) NSArray *data;

@end

