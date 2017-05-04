//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    if(self){
    _gold = 1000;
    _food = 80;
    }
    return self;
}



-(Footman *)trainFootman{
        if([self canTrainFootman] == YES) {
            self.gold = (self.gold - 135);
            self.food = (self.food - 2);
        Footman *aFootman = [[Footman alloc] init];
        return aFootman;
        }else{
            NSLog(@"Sorry you don't have enough resources");
        }
    return nil;
}

-(BOOL)canTrainFootman{
    BOOL canTrain;
    
    if(self.gold > 134 && self.food > 1){
        canTrain = YES;
    }else{
        canTrain = NO;
    }
    return canTrain;
}


-(Peasant *)trainPeasant{
    if([self canTrainPeasant] == YES){
        self.gold = (self.gold - 90);
        self.food = (self.food - 5);
        Peasant *aPeasant = [[Peasant alloc] init];
        return aPeasant;
    }else{
        NSLog(@"Sorry  you don't have enough resources");
    }
    return nil;
}

-(BOOL)canTrainPeasant{
    BOOL canTrain;
    if(self.gold > 89 && self.food > 4){
        canTrain = YES;
    }else{
        canTrain = NO;
    }
    return canTrain;
}

@end
