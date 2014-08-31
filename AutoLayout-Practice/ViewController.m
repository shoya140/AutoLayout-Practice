//
//  ViewController.m
//  AutoLayout-Practice
//
//  Created by ishimaru on 2014/08/31.
//  Copyright (c) 2014年 mrk1869. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController (){
    CustomCell *stubCell;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    stubCell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self configureCell:stubCell atIndexPath:indexPath];
    [stubCell layoutSubviews];
    CGFloat height = [stubCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    return height+1;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    return 40.0;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *customCell = (CustomCell *)cell;
    NSString *text = @"text";
    for (int i = 0; i < indexPath.row; i++) {
        text = [NSString stringWithFormat:@"%@ text",text];
    }
    customCell.mainLabel.text = text;
}

@end
