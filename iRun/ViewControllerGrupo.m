//
//  ViewControllerGrupo.m
//  iRun
//
//  Created by William Alvelos on 18/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import "ViewControllerGrupo.h"
#import "eventoView.h"
@interface ViewControllerGrupo ()

@end

@implementation ViewControllerGrupo{
NSMutableArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize table data
    
    
    NSMutableArray * eventos = [NSMutableArray arrayWithObjects:@"Maratona ", @"Corrida 5 km", @"Corrida 10 km", nil];

    
    NSMutableArray * evento = [[NSUserDefaults standardUserDefaults] objectForKey:@"eventos"];
    for (NSString *str in evento) {
        [eventos addObject:str];
    }
    
    tableData =  eventos;
    
    
    //= [NSMutableArray arrayWithArray:evento]
    //[NSString stringWithFormat: @"%@", evento];
    
    
    //[evento addObject: ];
    
    //tableData = [NSMutableArray arrayWithObjects:@"Maratona ", @"Corrida 5 km", @"Corrida 10 km",[NSString stringWithFormat:@" %@ - %@", evento, local], nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSLog(@"%@", [tableData objectAtIndex:indexPath.row]);
    
    UIStoryboard * tela = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    
    eventoView * eventoView = [tela instantiateViewControllerWithIdentifier:@"Eventos_Corrida"];
    
    eventoView.fucker = [tableData objectAtIndex:indexPath.row];
    [self presentViewController:eventoView animated:NO completion:nil];
    

    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"homem_correndo.jpg"];
    return cell;
}






@end
