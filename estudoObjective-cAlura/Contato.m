//
//  Contato.m
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import "Contato.h"

@implementation Contato

-(NSString *)description{
    NSString *dados = [NSString stringWithFormat:@"Nome: %@ Endereco: %@ E-mail: %@ Site: %@ Telefone: %@", self.nome, self.endereco, self.email, self.site, self.telefone];
    return dados;
}

@end
