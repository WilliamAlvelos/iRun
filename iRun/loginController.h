//
//  loginController.h
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Usuario.h"

@interface loginController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *user;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end
