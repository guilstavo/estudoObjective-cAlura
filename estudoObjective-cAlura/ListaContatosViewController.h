//
//  ListaContatosViewController.h
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"
#import "ViewController.h"

@interface ListaContatosViewController : UITableViewController<ViewControllerDelegate>

@property ContatoDao *dao;
@property Contato *contatoSelecionado;

-(void) contatoAdicionado: (Contato *)contato;
-(void) contatoAtualizado: (Contato *)contato;

@end
