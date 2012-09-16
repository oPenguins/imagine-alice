//
//  IAHistoryPoint.h
//  Imagine Alice
//
//  Created by Sergey Dunets on 9/16/12.
//  Copyright (c) 2012 imagine-alice.org. All rights reserved.
//

#import <Foundation/Foundation.h>

/// Every object add itself to the history point, if it wants to be saved

@interface IAHistoryPoint : NSObject

- (void)addObjectToHistoryPoint:(id)object;

@end