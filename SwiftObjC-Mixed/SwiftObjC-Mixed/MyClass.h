//
//  MyClass.h
//  Swift_ObjC
//
//  Created by Alvin Meimoun on 06/12/2016.
//  Copyright © 2016 Supinfo. All rights reserved.
//

#ifndef MyClass_h
#define MyClass_h

#import <Foundation/Foundation.h>


@interface MyClass : NSObject

@property(atomic, strong) NSString* name;

-(void) normalFunc:(NSString *) param1;

+(void) staticFunc:(NSString *) param2;

@end

#endif /* MyClass_h */
