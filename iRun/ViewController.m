//
//  ViewController.m
//  iRun
//
//  Created by William Alvelos on 18/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
- (IBAction)end:(id)sender {
}
- (IBAction)end2:(id)sender {
}
- (IBAction)actionNew:(id)sender {
    
    //User Defaults Nome do Evento
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *array = [defaults objectForKey:@"eventos"];
    if(!array){
        array = [NSMutableArray array];
        
    }
    [array addObject:self.nomeEvento.text];
    [defaults setObject:array forKey:@"eventos"];
    //User Defaults Local do Evento
    [defaults synchronize];
    
    //User Defaults Data Evento
    
   /* NSUserDefaults *defaultsDate = [NSUserDefaults standardUserDefaults];
    
    
    [defaultsDate setObject:self.date forKey:@"data"];
    
    [defaultsDate synchronize];
    
    */
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Grupo" message:@"Grupo de Corrida criado com sucesso!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:/*@"Cancel",*/ nil];
    
    alertView.alertViewStyle = UIAlertViewStyleDefault;
    
    [alertView show];
    
}

@end
