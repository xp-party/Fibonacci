//
//  FibonacciUnitTests.m
//  FibonacciUnitTests
//
//  Created by Виталий on 11.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FibonacciUnitTests.h"
#import "Fibonacci.h"

@implementation FibonacciUnitTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testZeroFibonacci {
    STAssertEquals(0, fib(0), @"fibonacci should be 0 for 0 index");
}

- (void)testOneFibonacci {
    STAssertEquals(1, fib(1), @"fibonacci should be 1 for 1 index");
}

- (void)testTwoFibonacci {
    STAssertEquals(1, fib(2), @"fibonacci should be 1 for 1 index");
}


- (void)testThreeFibonacci {
    STAssertEquals(2, fib(3), @"fibonacci should be 1 for 1 index");
}

- (void)testFourFibonacci {
    STAssertEquals(3, fib(4), @"fibonacci should be 6 for 4 index");
}

- (void)testMaxCorrectFibonacci {
    STAssertEquals(MAX_FIB, fib(MAX_FIB_COUNT), @"fibonacci should be 1 for 1 index");
}

@end
