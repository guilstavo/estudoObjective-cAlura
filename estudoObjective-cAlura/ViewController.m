//
//  ViewController.m
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import "ViewController.h"
#import "Contato.h"


@implementation ViewController

-(id)initWithCoder: (NSCoder *) aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
        self.navigationItem.rightBarButtonItem = botao;
        self.navigationItem.title = @"Novo Contato";
        
    }
    return self;
}

-(void)adiciona{
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.site = self.site.text;
    contato.telefone = self.telefone.text;
    contato.email = self.email.text;
    
    [self.dao adicionaContato:contato];
    
    NSLog(@"%@", self.dao.contatos);
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
