//
//  CTCarListViewController.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>

#import "CTCarListHeaderView.h"
#import "CTCarListCell.h"
#import "UIColor+CTColors.h"

@interface CTCarListViewController ()
<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet CTCarListHeaderView *headerView;

@property (nonatomic, strong) NSArray <CTCarVendorViewModel *>*vendors;

@end

@implementation CTCarListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNavigationBar];
    [self setupTableView];
    
    [self.eventHandler viewIsReady];
}

#pragma mark - Setup

- (void)setupNavigationBar {
    self.title = NSLocalizedString(@"car.list.title", @"Car list");
    self.navigationController.navigationBar.barTintColor = UIColor.primaryColor;
}

- (void)setupTableView {
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    NSString *className = NSStringFromClass([CTCarListCell class]);
    UINib *nib = [UINib nibWithNibName:className bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:className];
}

#pragma mark - <CTCarListViewProtocol>

- (void)displayLoading {
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    self.headerView.hidden = YES;
    self.tableView.hidden = YES;
}

- (void)displayCarList:(CTCarListViewModel *)viewModel {
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    
    self.headerView.pickupDate.text = viewModel.pickUpDate;
    self.headerView.returnDate.text = viewModel.returnUpDate;
    
    self.vendors = viewModel.carVendorViewModels;
    
    self.headerView.hidden = NO;
    self.tableView.hidden = NO;
    [self.tableView reloadData];
}

- (void)displayLoadingError:(NSError *)error {
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    
    UIAlertController *errorAlert = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"Error", @"")
                                                                        message:error.localizedDescription
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"")
                                                     style:UIAlertActionStyleCancel
                                                   handler:nil];
    [errorAlert addAction:action];
    
    [self presentViewController:errorAlert animated:YES completion:nil];
}

#pragma mark - <UITableViewDataSoure>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.vendors.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    CTCarVendorViewModel *vendor = self.vendors[section];
    return vendor.vehicles.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    CTCarVendorViewModel *vendor = self.vendors[section];
    return vendor.vendorName;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 256;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = NSStringFromClass([CTCarListCell class]);
    CTCarListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    CTCarVendorViewModel *vendor = self.vendors[indexPath.section];
    CTCarViewModel *viewModel = vendor.vehicles[indexPath.row];
    [cell setupCell:viewModel];
    
    return cell;
}


#pragma mark - <UITableViewDelegate>

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    CTCarVendorViewModel *vendor = self.vendors[indexPath.section];
    CTCarViewModel *viewModel = vendor.vehicles[indexPath.row];
    [self.eventHandler userSelectedVehicle:viewModel];
}


@end
