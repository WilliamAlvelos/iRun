//
//  ViewController.m
//  iRun
//
//  Created by William Alvelos on 18/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "ViewController.h"
#import "BancoDados.h"
#import "evento.h"

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
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    NSMutableArray *array = [defaults objectForKey:@"eventos"];
//    if(!array){
//        array = [NSMutableArray array];
//        
//    }
//    [array addObject:self.nomeEvento.text];
//    [defaults setObject:array forKey:@"eventos"];
//
//    [defaults synchronize];
    //User Defaults Local do Evento
    
    evento * e = [[evento alloc]init];
    
    e.nome_evento = self.nomeEvento.text;
    e.local_evento = self.localEvento.text;
    
    BancoDados * banco = [[BancoDados alloc]init];
    
    [banco insereEvento:e];
    
    
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
