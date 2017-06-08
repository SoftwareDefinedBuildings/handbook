#import <Foundation/Foundation.h>

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
extern int original = 20;
extern int *reference;
reference = &original;

//STRUCTURES
struct books {
    NSString *title;
    NSString *author;
    int publication;
}

@interface bookClass:NSObject
- (void) printBook: (struct books) book;
@end

@implementation bookClass
- (void) printBook: (struct books) book {
    NSLog(@"Title of the book: %@\n", book.title);
    NSLog(@"Publication fo the book: %d\n", book.publication);
}
@end

//ERROR HANDLING
@interface errorClass:NSObject
- (NSString *) getEmployeeNameForID:(int) id withError:(NSError *) errorPointer;
@end

@implementation errorClass:
- (NSString *) getEmployeeNameForID:(int) id withError:(NSError *) errorPointer {
    if (id == 1) {
        return @"Test Passed";
    } else {
        NSString *domain = @"com.john.roundabout.errordomain";
        NSString *desc = NSLocalizedString(@"Unable to complete the process", @"");
        NSDictionary *userInfo [[NSDictionary alloc] initWithObjectsAndKeys: desc, @"NSLocalizedDescriptionKey", NULL];
        *errorPtr = [NSError errorWithDomain:domain code:-101 userInfo:userInfo];
        return @"";
    }
}
@end

float main() {
    //NUMBERS
    SampleClass instance = [[SampleClass alloc] init];
    NSNumber *a = [NSNumber numberWithFloat: 10.5];
    NSNumber *b = [NSNumber numberWithFloat: 6.3];
    NSNumber *result = [instance raisePower:a toExponent: b];

    //ARRAYS
    NSLog(@"4th Value of array: %d", array3[3]);

    //STRINGS
    NSString *str1 = "Hello";
    NSString *str2 = "World";
    NSString *str3;
    int len;

    str3 = [str uppercaseString]; //Uppercase
    str3 = [str1 stringByAppendingFormat:@" People"]; //Concatenation
    len = [str3 length]; //Length of String
    str3 = [[NSString alloc] initWithFormat:@"%@ %@", str1, str2]; //Initialized with format

    //STRUCTURES
    struct books greatGatsby;
    greatGatsby.title = @"Great Gatsby";
    greatGatsby.author = @"Scott Fitzgerald";
    greatGatsby.publication = 1945;

    bookClass *newBook = [[bookClass alloc] init];
    [newBook printBook: greatGatsby];

    return [result floatValue];
}
