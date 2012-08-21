//
//  IAPosition.h
//  Imagine Alice
//
//  Created by Sergey Dunets on 8/12/12.
//  Copyright (c) 2012 imagine-alice.org. All rights reserved.
//

#import <Foundation/Foundation.h>

// Left hand bottom corner is x=0, y=0

@interface IAPosition : NSObject

@property (assign, nonatomic) NSInteger x;
@property (assign, nonatomic) NSInteger y;

+ (IAPosition *)newPositionWithX:(NSInteger)x y:(NSInteger)y;

@end
