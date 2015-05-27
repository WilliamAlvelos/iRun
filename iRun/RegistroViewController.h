//
//  RegistroViewController.h
//  iRun
//
//  Created by William Alvelos on 23/04/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BancoDados.h"
#import "Usuario.h"


@interface RegistroViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *labelNome;
@property (weak, nonatomic) IBOutlet UITextField *labelSenha;
@property (weak, nonatomic) IBOutlet UITextField *labelSenha2;

@end
