//
//  IARuleEngineTests.m
//  IARuleEngineTests
//
//  Created by Sergey Dunets on 8/29/12.
//  Copyright (c) 2012 imagine-alice.org. All rights reserved.
//

#import "IARuleEngineTests.h"
#import "IARuleEngine.h"

@implementation IARuleEngineTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSaveHistory
{
    IARuleEngine *testEngine = [[IARuleEngine alloc] init];
    IAGameObject *testObject = [[IAGameObject alloc] initWithName:@"test name" absolutePosition:[IAAbsolutePosition absolutePositionWithX:2.5 y:1.3]];
    [testEngine.gameObjects addObject:testObject];
    
    [testEngine saveHistory];
    
    STAssertEqualObjects([[[testEngine history] gameObjectAtLastHistoryPointWithObjectName:@"test name"] absolutePosition], [IAAbsolutePosition absolutePositionWithX:2.5 y:1.3], @"Wrong object in history");
    STAssertEqualObjects([[[testEngine history] gameObjectAtLastHistoryPointWithObjectName:@"test name"] name], @"test name", @"Wrong object in history");
    
    [testEngine release];
    [testObject release];
}

@end
