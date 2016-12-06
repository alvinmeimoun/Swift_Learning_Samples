

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
