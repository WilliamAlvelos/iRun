//
//  TimerWatchInterfaceController.m
//  
//
//  Created by William Alvelos on 22/04/15.
//
//

#import "TimerWatchInterfaceController.h"

@interface TimerWatchInterfaceController ()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *labelTimer;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *botaoCorrida;

@end

@implementation TimerWatchInterfaceController{
    //NSUserDefaults * defaults;
    BOOL botao;
    NSString * timer;
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
//    defaults = [[NSUserDefaults alloc]initWithSuiteName:@"group.iRun"];
//    
//     NSString * palavra = [defaults objectForKey:@"userRelogio"];
    
    
    [self.Timer setDate:[NSDate dateWithTimeIntervalSinceNow:0]];
    [self.Timer start];
    
    [self carrega];
    // Configure interface objects here.
}

-(void)carrega{
    
    [_botaoCorrida setTitle:@"Resetar"];
    botao = TRUE;
    
}
- (IBAction)actionCorrida {
    
    if(botao){
        [_botaoCorrida setTitle:@"Correr"];
        [self.Timer stop];
        [self.Timer setDate:[NSDate dateWithTimeIntervalSinceNow:0]];
        botao = FALSE;
    }
    else{
        [_botaoCorrida setTitle:@"Resetar"];
        [self.Timer start];
        botao = TRUE;
    }
    
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



