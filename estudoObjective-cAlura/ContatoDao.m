//
//  ContatoDao.m
//  estudoObjective-cAlura
//
//  Created by Gustavo on 25/09/15.
//  Copyright © 2015 Gustavo. All rights reserved.
//

#import "ContatoDao.h"

@implementation ContatoDao

-(id) init{
    self = [super init];
    if(self){
        self.contatos = [NSMutableArray new];
    }
    return self;
}
@end
