//
//  ViewControllerGrupo.h
//  iRun
//
//  Created by William Alvelos on 18/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerGrupo : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIDatePicker *dataCorrida;

@end
