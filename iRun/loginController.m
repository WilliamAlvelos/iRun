//
//  loginController.m
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "loginController.h"
#include <unistd.h>
#include <netdb.h>
#import "BancoDados.h"
#import "pageHomeController.h"

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

-(BOOL)isNetworkAvailable
{
    char *hostname;
    struct hostent *hostinfo;
    hostname = "google.com";
    hostinfo = gethostbyname (hostname);
    if (hostinfo == NULL){
        NSLog(@"-> no connection!\n");
        return NO;
    }
    else{
        NSLog(@"-> connection established!\n");
        return YES;
    }
}

- (IBAction)entrarAction:(id)sender {
    
    NSMutableArray *usuarios = [[NSMutableArray alloc]init];
    
    if(self.isNetworkAvailable){
        
        usuarios = [BancoDados retornaUsuarios];
        NSLog(@"%@ usuarios", usuarios);
        
        
    if([self.user.text isEqualToString: @""] || [self.password.text isEqualToString: @""]){
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"Os campos de usuario ou senha estão incompletos!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];

    }
    
        for(int i=0; i<usuarios.count; i++){
            Usuario * usuario = [usuarios objectAtIndex:i];
            
            if(([self.user.text isEqualToString: usuario.nome] && [self.password.text isEqualToString: usuario.senha])){
                
                UIStoryboard * tela = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                pageHomeController * home = [tela instantiateViewControllerWithIdentifier:@"HomeView"];
                home.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
                [self presentViewController:home animated:YES completion:nil];
            }
            
        }
        
        UIStoryboard * tela = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        pageHomeController * home = [tela instantiateViewControllerWithIdentifier:@"HomeView"];
        home.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        [self presentViewController:home animated:YES completion:nil];
        
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"usuário inexistente!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [alert show];
        
        
        
        }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sem conexão" message:@"Não foi possível se conectar à Internet!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
                [alert show];
    }
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    [defaults setObject:self.user.text forKey:@"user"];
    
    [defaults synchronize];
    
}
- (IBAction)end1:(id)sender {
}
- (IBAction)end2:(id)sender {
}



@end
