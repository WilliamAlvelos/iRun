//
//  loginController.m
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "loginController.h"

@interface loginController ()

@end

@implementation loginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
 

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)entrarAction:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    [defaults setObject:self.user.text forKey:@"user"];
    
    [defaults synchronize];
    
}
- (IBAction)end1:(id)sender {
}
- (IBAction)end2:(id)sender {
}



@end
