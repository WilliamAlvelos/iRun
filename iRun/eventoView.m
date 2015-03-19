//
//  eventoView.m
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "eventoView.h"

@interface eventoView ()

@end

@implementation eventoView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label1.text = _fucker;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)action:(id)sender {
    
    
    NSString * palavra = [NSString stringWithFormat:@"Você Esta Participando da %@", self.label1.text];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"iRun"
                                                        message:palavra
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    alertView.alertViewStyle = UIAlertViewStyleDefault;
    
    [alertView show];
    
}

@end
