//
//  cellEmployees.m
//  Table-Conti02
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "cellEmployees.h"
#import "Declarations.h"

@implementation cellEmployees

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)btnEnablePressed:(id)sender
{
    
   
    
    if ([maBtnState[self.btnEnable.tag] isEqual: @"ON"])
    {
        self.lblName.textColor = [UIColor blueColor];
        self.lblOff.text = @"OFF";
        
        
        maBtnState[self.btnEnable.tag] = @"OFF";
    }
    
    else if ([maBtnState[self.btnEnable.tag] isEqual: @"OFF"])
    {
        self.lblName.textColor = [UIColor redColor];
         self.lblOff.text = @"ON";
        
        maBtnState[self.btnEnable.tag] = @"ON";
    }
    
    
}
@end
