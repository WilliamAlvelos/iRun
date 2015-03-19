//
//  ViewController.h
//  iRun
//
//  Created by William Alvelos on 18/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nomeEvento;
@property (weak, nonatomic) IBOutlet UITextField *localEvento;
@property (weak, nonatomic) IBOutlet UIButton *botaoCriar;
@property (weak, nonatomic) IBOutlet UIDatePicker *date;

@end

