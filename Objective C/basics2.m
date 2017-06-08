//NUMBERS
@interface sampleClass:NSObject
- (NSNumber *) raisePower: (NSNumber *)a toExponent:(NSNumber *) b;
@end

@implementation sampleClass
- (NSNumber *) raisePower: (NSNumber *)a toExponent:(NSNumber *) b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}
@end

//ARRAYS
extern array1[10];
extern array2[] = {1, 2, 3, 4, 5};
extern array3[5] = {5, 4, 3, 2, 1};

//POINTERS

float main() {
    //NUMBERS
    SampleClass instance = [[SampleClass alloc] init];
    NSNumber *a = [NSNumber numberWithFloat: 10.5];
    NSNumber *b = [NSNumber numberWithFloat: 6.3];
    NSNumber *result = [instance raisePower:a toExponent: b];

    //ARRAYS
    NSLog(@"4th Value of array: %d", array3[3]);

    return [result floatValue];
}
