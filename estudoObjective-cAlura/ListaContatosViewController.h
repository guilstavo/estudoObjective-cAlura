//
//  ListaContatosViewController.h
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"

@interface ListaContatosViewController : UITableViewController

@property ContatoDao *dao;
@property Contato *contatoSelecionado;

@end
