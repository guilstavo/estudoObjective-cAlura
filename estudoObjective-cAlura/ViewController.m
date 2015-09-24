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

-(IBAction)adiciona{
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.site = self.site.text;
    contato.telefone = self.telefone.text;
    contato.email = self.email.text;
    NSLog(@"Dados do contato: %@ %@ %@ %@ %@", contato.nome, contato.endereco, contato.site, contato.telefone, contato.email);
}

@end
