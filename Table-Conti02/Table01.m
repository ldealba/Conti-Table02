//
//  ViewController.m
//  Table-Conti02
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Table01.h"
#import "cellEmployees.h"

NSMutableArray *aNames;
NSMutableArray *aNumber;
NSMutableArray *aButton;

@interface Table01 ()

@end

@implementation Table01

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-----------------------------------------
- (void)initController
{
    aNames  = [NSMutableArray arrayWithObjects: @"Ned Stark", @"Jofrey Lannister",@"Kalissi",@"Khal Drogo",@"John Snow",nil];
    
    aNumber   = [NSMutableArray arrayWithObjects: @"721774", @"721775" , @"721776" , @"721777" , @"721778", nil];
    
    maBtnState = [NSMutableArray arrayWithObjects: @"OFF",@"OFF",@"OFF",@"OFF",@"OFF",nil];
    
}

//-----------------------------------------
//Table functions
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellEmployees");
    static NSString *CellIdentifier = @"cellEmployees";
    
    cellEmployees *cell = (cellEmployees *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        //cell = [[cellEmployees alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [tableView registerNib:[UINib nibWithNibName:@"cellEmployees" bundle:nil] forCellReuseIdentifier:@"cellEmployees"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellEmployees"];
    }
    
    cell.btnEnable.tag          = indexPath.row;
    cell.selectionStyle         = UITableViewCellSelectionStyleNone;
    cell.vCell.backgroundColor  = [UIColor clearColor];
    cell.lblName.text           = aNames[indexPath.row];
    cell.lblName.adjustsFontSizeToFitWidth = YES;
    
    cell.lblNo.text             = aNumber[indexPath.row];
   
    
    return cell;
}























@end
