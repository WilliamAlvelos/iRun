//
//  BancoDados.h
//  iRun
//
//  Created by William Alvelos on 22/04/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Usuario.h"
#import "evento.h"

@interface BancoDados : NSObject

+ (NSMutableArray *) retornaUsuarios;
- (NSString *) insereUsuario:(Usuario*)u;
+ (NSMutableArray *) retornaEventos;
- (NSString *) insereEvento:(evento*)e;

@end
