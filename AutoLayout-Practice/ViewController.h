//
//  ViewController.h
//  AutoLayout-Practice
//
//  Created by ishimaru on 2014/08/31.
//  Copyright (c) 2014年 mrk1869. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
