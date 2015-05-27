//
//  InterfaceController.m
//  iRun WatchKit Extension
//
//  Created by William Alvelos on 16/04/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceImage *imagem;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *labelNome;
@end

@implementation InterfaceController{
    NSUserDefaults * defaults;
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    defaults = [[NSUserDefaults alloc]initWithSuiteName:@"group.iRun"];
    
    NSString * palavra = [defaults objectForKey:@"userRelogio"];

    self.labelNome.text = [NSString stringWithFormat:@"Olá %@", palavra];
    
    NSData * data = [defaults objectForKey:@"imagemRelogio"];
    
    
    UIImage * imagemRelogio = [UIImage imageWithData:data];
    
    [self.imagem setImageNamed:@"homem_correndo"];
    
    if(!imagemRelogio){
        [self.imagem setImage:[UIImage imageNamed:@"homem_correndo.jpg"]];
    }
    else{
        [self.imagem setImageData:data];
    }
    

    // Configure interface objects here.
}


- (void)willActivate {
    
    
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



