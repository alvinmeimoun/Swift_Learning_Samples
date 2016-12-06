
#ifndef MyClass_h
#define MyClass_h

#import <Foundation/Foundation.h>


@interface MyClass : NSObject

@property(atomic, strong) NSString* name;

-(void) normalFunc:(NSString *) param1;

+(void) staticFunc:(NSString *) param2;

@end

#endif /* MyClass_h */
