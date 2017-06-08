#import <Foundation/Foundation.h> // Import preprocessor file

//INTERFACE
@interface SampleClass:NSObject //Interface, class name, superclass
- (void) sampleMethod; //Sample Methods
- (int) sampleMethod2;
@end

//METHODS
- (void) sampleMethod { //Return type in parentheses, method name
    NSLog(@"Hello, World! \n");
}
- (int) sampleMethod2 {
    return 42;
}
- (int) factorial: (int) value {
    int returnVal = 0;
    if (value == 1) {
        return returnVal;
    } else {
        tmp = n * [self factorial:value - 1]
    }
}
@end

//BLOCKS
double (^power)(double, double) =
    ^(double firstVal, double secondVale) {
        return firstVal ** secondVal;
    }
double result = power(2, 4);

//VARIABLES
extern int a, b; //'extern' keyword allows declaring variable anymore
extern float c; //Variables can only be defined once on each level
#define LENGTH 10; //Constant

//MAIN
int main() {
    // VARIABLES & CONSTANTS
    int d = 5;
    const int WIDTH = 5;

    //CLASS VALUES
    SampleClass *instance = [[SampleClass alloc] init]; //Create class instance
    factored = [instance factorial:5]; //Call instance method

    //OPERATORS
    NSLog(@"Storage size for int: %d \n", sizeof(int)); //Byte size

    //LOOPS
    for( ; ; ) {
        NSLog(@"Infinite looping");
    }
    return 123;
}
