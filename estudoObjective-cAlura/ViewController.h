//
//  ViewController.h
//  estudoObjective-cAlura
//
//  Created by Gustavo on 24/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"

@interface ViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *telefone;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *site;
@property IBOutlet UITextField *email;

@property ContatoDao *dao;

@end

