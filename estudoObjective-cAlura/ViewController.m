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
        self.dao = [ContatoDao contatoDaoInstance];
    }
    return self;
}

-(void) viewDidLoad{
    [super viewDidLoad];
    
    UIBarButtonItem *botao = nil;
    if(self.contato){
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(altera)];
        self.navigationItem.title = @"Editar Contato";
    }else{
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
        self.navigationItem.title = @"Novo Contato";
    }
    
    self.navigationItem.rightBarButtonItem = botao;
    
    if (self.contato) {
        self.nome.text = self.contato.nome;
        self.endereco.text = self.contato.endereco;
        self.telefone.text = self.contato.telefone;
        self.email.text = self.contato.email;
        self.site.text = self.contato.site;
    }
}

-(void)adiciona{
    self.contato = [Contato new];
    [self pegaDadosDoFurmulario];
    [self.dao adicionaContato:self.contato];
    [self.navigationController popViewControllerAnimated:YES];
    [self.delegate contatoAdicionado: self.contato];
}

-(void) altera{
    [self pegaDadosDoFurmulario];
    
    [self.delegate contatoAtualizado: self.contato];
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) pegaDadosDoFurmulario{
    self.contato.nome = self.nome.text;
    self.contato.endereco = self.endereco.text;
    self.contato.site = self.site.text;
    self.contato.telefone = self.telefone.text;
    self.contato.email = self.email.text;
}

@end
