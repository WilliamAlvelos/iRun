//
//  RegistroViewController.m
//  iRun
//
//  Created by William Alvelos on 23/04/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "RegistroViewController.h"

@interface RegistroViewController ()

@end

@implementation RegistroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)registroAction:(id)sender {
    
    if(![self.labelSenha.text isEqualToString:self.labelSenha2.text]){
        
        NSString * palavra = [NSString stringWithFormat:@"As senhas são diferentes"];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"iRun"
                                                            message:palavra
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        
        alertView.alertViewStyle = UIAlertViewStyleDefault;
        
        [alertView show];
    }
    
    else if([self.labelNome.text isEqualToString:@""]){
        NSString * palavra = [NSString stringWithFormat:@"Os campos estão vazios"];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"iRun"
                                                            message:palavra
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        
        alertView.alertViewStyle = UIAlertViewStyleDefault;
        
        [alertView show];
    }
    
    Usuario * u;
    u.nome = self.labelNome.text;
    u.senha = self.labelSenha.text;
    BancoDados * banco = [[BancoDados alloc]init];

    NSString * retorno;
    retorno = [banco insereUsuario:u];
    
    
    if([retorno isEqualToString: @"true"]){
        UIStoryboard * tela = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController * home = [tela instantiateViewControllerWithIdentifier:@"HomeView"];
        home.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        [self presentViewController:home animated:YES completion:nil];
    }
    
    else{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"ERRO" message:@"Seu Cadastro não foi possivel!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:/*@"Cancel",*/ nil];
        
        alertView.alertViewStyle = UIAlertViewStyleDefault;
        
        [alertView show];
    }

    
}
- (IBAction)voltarAction:(id)sender {
    UIStoryboard * tela = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * home = [tela instantiateViewControllerWithIdentifier:@"loginView"];
    home.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:home animated:NO completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
