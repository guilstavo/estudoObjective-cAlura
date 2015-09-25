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
    
    UIBarButtonItem * botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
    self.navigationItem.rightBarButtonItem = botaoForm;
    self.navigationItem.title = @"Contatos";
    return self;
}

-(void) exibeFormulario{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *form = [storyboard instantiateViewControllerWithIdentifier:@"Form-Contato"];
    [self.navigationController pushViewController:form animated:YES];
}

@end
