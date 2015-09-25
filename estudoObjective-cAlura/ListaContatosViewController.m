//
//  ListaContatosViewController.m
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import "ListaContatosViewController.h"
#import "ViewController.h"

@implementation ListaContatosViewController

-(id) init{
    self = [super init];
    if(self){
        UIBarButtonItem * botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        self.navigationItem.rightBarButtonItem = botaoForm;
        self.navigationItem.title = @"Contatos";
        self.contatos = [NSMutableArray new];
    }
    return self;
}

-(void) exibeFormulario{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *form = [storyboard instantiateViewControllerWithIdentifier:@"Form-Contato"];
    form.contatos = self.contatos;
    
    [self.navigationController pushViewController:form animated:YES];
}

@end
