//
//  ViewController.m
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

-(IBAction)adiciona{
    NSString *nome = self.nome.text;
    NSString *endereco = self.endereco.text;
    NSString *site = self.site.text;
    NSString *telefone = self.telefone.text;
    NSString *email = self.email.text;
    NSLog(@"Dados do contato: %@ %@ %@ %@ %@", nome, endereco, site, telefone, email);
}

@end
