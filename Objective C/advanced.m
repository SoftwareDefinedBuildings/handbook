/*
In this documentation:
- Classes
- Inheritance
- Properties and Synthesizers
- Polymorphism (Method Override)
- Encapsulation / Abstraction
*/
#import <Foundation/Foundation.h>;

//MARK: INTERFACE
@interface NSString(MyAdditions)
+(NSString *)getCopyRightString;
@end

//MARK: PROTOCOL
@protocol sampleProtocol
@required
-(void) requiredProtocol: (NSString) requiredVar;
@optional
-(NSNumber) optionalProtocol: (NSNumber) requiredNum;
@end

//MARK: Box Class
@interface Box:NSObject
{ //Instance Variables, Private by Default
    double length;
    double width;
    double height;
}
/* Properties:
    - Ensure instance variable accessible outside class
    - 1. Access Specifiers (nonatomic/atomic/readwrite/readonly/strong/weak)
    - 2, 3. Datatype + Name
    - Getter & Setter Methods are implicitly created with property
*/
@property(nonatomic, readwrite) double height;
//function
-(double) volume;
-(double) surfaceArea;
@end

//MARK: Box Extension
@interface Box()
{
    double diagonalLength;
}
@end

@implementation Box:
@synthesize height;
-(id) init {
    self = [super init];
    length = 1.0;
    width = 1.0;
    return self;
}

-(double) volume {
    return length * width * height;
}
@end

//MARK: Rectangle Class
@interface Rectangle:Box
{
    NSString *color;
    double weight;
}
-(NSString) getColor;
-(void) setWeight: (double) weight;
@end

void main() {
    Box box1 = [[Box alloc] init];
    Box box2 = [[Box alloc] init];
}
