//
//  ViewController.h
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"

@protocol ViewControllerDelegate <NSObject>

-(void)contatoAdicionado: (Contato *)contato;
-(void)contatoAtualizado: (Contato *)contato;

@end

@interface ViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *telefone;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *site;
@property IBOutlet UITextField *email;

@property ContatoDao *dao;
@property Contato *contato;

@property id<ViewControllerDelegate> delegate;
@end

