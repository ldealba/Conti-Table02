//
//  ViewController.h
//  Table-Conti02
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table01 : UIViewController <UITableViewDelegate, UITableViewDataSource>

//Table
@property (strong, nonatomic) IBOutlet UITableView *tblMain;

@end

