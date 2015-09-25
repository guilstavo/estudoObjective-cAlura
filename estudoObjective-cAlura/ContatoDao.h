//
//  ContatoDao.h
//  estudoObjective-cAlura
//
//  Created by Gustavo on 25/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contato.h"

@interface ContatoDao : NSObject

@property NSMutableArray *contatos;

-(void) adicionaContato: (Contato *) contato;
-(NSInteger) total;
-(Contato *) contatoDoIndice: (NSInteger) indice;
+(ContatoDao *) contatoDaoInstance;
-(void) removeContato: (Contato *) contato;

@end
