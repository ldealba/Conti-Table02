//
//  cellEmployees.h
//  Table-Conti02
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellEmployees : UITableViewCell

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblNo;
@property (strong, nonatomic) IBOutlet UILabel *lblName;


//View
@property (strong, nonatomic) IBOutlet UIView *vCell;


@end