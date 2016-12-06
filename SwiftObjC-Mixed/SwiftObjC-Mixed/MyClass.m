//
//  MyClass.m
//  Swift_ObjC
//
//  Created by Alvin Meimoun on 06/12/2016.
//  Copyright © 2016 Supinfo. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

@synthesize name;

-(void) normalFunc:(NSString *) param1{
    printf("Instance objc func called\n");
}

+(void) staticFunc:(NSString *) param2{
    printf("Static objc func called\n");
}

@end
