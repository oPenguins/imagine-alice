//
//  IAHistoryPointTests.m
//  IAHistoryPointTests
//
//  Created by Sergey Dunets on 13.10.12.
//  Copyright (c) 2012 imagine-alice.org. All rights reserved.
//

#import "IAHistoryPointTests.h"
#import "IAHistoryPoint.h"
#import "IAGameObject.h"

@implementation IAHistoryPointTests

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

- (void)testGameObjectIsCopiedDeeplyToHistoryPoint
{
    IAHistoryPoint *historyPoint = [[[IAHistoryPoint alloc] init] autorelease];
    NSMutableArray *moves = [NSMutableArray arrayWithObjects:[Vector2D withX:1.0 Y:0.0], [Vector2D withX:0.0 Y:2.0], nil];
    Vector2D *position = [Vector2D withX:1.5 Y:2.5];
    NSString *name = @"Test name";
    IAGameObject *gameObject = [[[IAGameObject alloc] initWithName:name absolutePosition:position availableMoves:moves] autorelease];
    
    [historyPoint addObjectToHistoryPoint:gameObject];
    
    [gameObject.name setString:@"Another Name"];
    
    gameObject.absolutePosition = [Vector2D withX:2.71 Y:3.14];
    
    [gameObject.availableMoves removeAllObjects];
    NSLog(@"%@", gameObject.description);
    [gameObject.availableMoves setArray:@[[Vector2D withX:5.0 Y:11.0], [Vector2D withX:42.0 Y:3.14]]];
    
    STAssertEqualObjects([(IAGameObject *)[historyPoint objectWithName:name] name], name, @"name copy is not deep");
    
    STAssertEqualObjects([(IAGameObject *)[historyPoint objectWithName:name] absolutePosition], [Vector2D withX:1.5 Y:2.5], @"position copy is not deep");
    
    STAssertEqualObjects([(IAGameObject *)[historyPoint objectWithName:name] availableMoves], moves, @"availableMoves copy is not deep");
}

@end
