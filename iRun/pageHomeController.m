//
//  pageHomeController.m
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "pageHomeController.h"

@interface pageHomeController ()

@end

@implementation pageHomeController{
    NSTimer * timer;
    NSUserDefaults * defaults;
    int timerSegundos;
    NSData * imagemRelogio;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector: @selector(timer) userInfo:nil repeats:YES];
    
    defaults = [[NSUserDefaults  alloc]initWithSuiteName:@"group.iRun"];

    
    
    NSString * palavra = [[NSUserDefaults standardUserDefaults] objectForKey:@"user"];
    
    
    self.label1.text = [NSString stringWithFormat: @"Olá %@!", palavra];
    
    
    NSData * data = [[NSUserDefaults standardUserDefaults ]objectForKey:@"image"];
    
    imagemRelogio = data;
    
    
    UIImage * imagem = [UIImage imageWithData:data];
    
    if(!imagem){
        [self.imageView setImage:[UIImage imageNamed:@"homem_correndo.jpg"]];
    }
    else{
        [self.imageView setImage:imagem];
    }
    self.imageView.layer.cornerRadius = self.imageView.frame.size.height /2;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.borderWidth = 0;
    
    [defaults setObject:imagemRelogio forKey:@"imagemRelogio"];
    [defaults setObject:palavra forKey:@"userRelogio"];
    [defaults synchronize];

}

//-(void)timer{
//    
//    timerSegundos++;
//    [defaults setInteger:timerSegundos forKey:@"segundos"];
//    [defaults synchronize];
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)verEventosAction:(id)sender {
    
    UIStoryboard * tela = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    pageHomeController * home = [tela instantiateViewControllerWithIdentifier:@"tabBar"];
    home.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:home animated:YES completion:nil];
    
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
