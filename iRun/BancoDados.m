//
//  BancoDados.m
//  iRun
//
//  Created by William Alvelos on 22/04/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "BancoDados.h"


@implementation BancoDados

+ (NSMutableArray *) retornaUsuarios
{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://alvelos.wc.lt/iRun/retornadados.php?tipo_operacao=5"]];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil ];
    
    NSArray *separaObjetos = [NSJSONSerialization JSONObjectWithData:response options:0 error:nil];
    
    NSMutableArray *listUser = [[NSMutableArray alloc] init];
    NSDictionary *separaAtributos;
    
    
    for (int i = 0; i < separaObjetos.count; i++) {
        separaAtributos = [separaObjetos objectAtIndex:i];
        
        Usuario *u = [[Usuario alloc] init];
        u.nome = [separaAtributos objectForKey:@"nome_user"];
        u.senha= [separaAtributos objectForKey:@"senha_user"];
        
        [listUser addObject:u];
    }
    
    return listUser;
}


- (NSString *) insereUsuario:(Usuario*)u{
    
    //http://alvelos.wc.lt/SuaVoz/retornadados.php?operacao=1&nome_user=oi&senha_user=oi&email_user=oiii
    
    NSString *string = [NSString stringWithFormat:@"http://alvelos.wc.lt/iRun/retornadados.php?tipo_operacao=4&nome=%@&senha=%@", u.nome, u.senha];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:string]];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSArray *separaObjetos = [NSJSONSerialization JSONObjectWithData:response options:0 error:nil];
    
    NSDictionary *separaAtributos;
    
    separaAtributos = [separaObjetos objectAtIndex:0];
    
    NSString *strReturn = [separaAtributos objectForKey:@"retorno"];
    
    return strReturn;
}



- (NSString *) insereEvento:(evento*)e{
    
    NSString *string = [NSString stringWithFormat:@"http://alvelos.wc.lt/iRun/retornadados.php?tipo_operacao=1&nome=%@&local=%@", e.nome_evento, e.local_evento];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:string]];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSArray *separaObjetos = [NSJSONSerialization JSONObjectWithData:response options:0 error:nil];
    
    NSDictionary *separaAtributos;
    
    separaAtributos = [separaObjetos objectAtIndex:0];
    
    NSString *strReturn = [separaAtributos objectForKey:@"retorno"];
    
    return strReturn;
}


+ (NSMutableArray *) retornaEventos
{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://alvelos.wc.lt/iRun/retornadados.php?tipo_operacao=2"]];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil ];
    
    NSArray *separaObjetos = [NSJSONSerialization JSONObjectWithData:response options:0 error:nil];
    
    NSMutableArray *listUser = [[NSMutableArray alloc] init];
    NSDictionary *separaAtributos;
    
    
    for (int i = 0; i < separaObjetos.count; i++) {
        separaAtributos = [separaObjetos objectAtIndex:i];
        
        evento *e = [[evento alloc] init];
        e.nome_evento = [separaAtributos objectForKey:@"nome_user"];
        e.local_evento = [separaAtributos objectForKey:@"senha_user"];
        
        [listUser addObject:e];
    }
    
    return listUser;
}



- (NSString *) AdicionaParticipante:(NSString *)nome indice :(int)i{
    
    NSLog(@"http://alvelos.wc.lt/SuaVoz/adicionaResposta.php?operacao=4&id=%d&participantes_evento=%@", i, nome);
    
    
    NSString *string = [NSString stringWithFormat:@"http://alvelos.wc.lt/SuaVoz/adicionaResposta.php?operacao=3&id=%d&participantes_evento=%@", i, nome];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:string]];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSArray *separaObjetos = [NSJSONSerialization JSONObjectWithData:response options:0 error:nil];
    
    NSDictionary *separaAtributos;
    
    separaAtributos = [separaObjetos objectAtIndex:0];
    
    NSString *strReturn = [separaAtributos objectForKey:@"retorno"];
    
    return strReturn;
}




@end
