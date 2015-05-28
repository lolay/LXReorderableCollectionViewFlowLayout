//
//  LXReorderableCollectionViewLayoutAttributes.m
//
//  Created by Gregory Ritter on 2015-05-27.
//  Copyright (c) 2015 Lolay, Inc. All rights reserved.
//

#import "LXReorderableCollectionViewLayoutAttributes.h"

@implementation LXReorderableCollectionViewLayoutAttributes

- (id) copyWithZone:(NSZone*) zone {
    LXReorderableCollectionViewLayoutAttributes* attributes = [super copyWithZone:zone];
    attributes.editing = self.editing;
    return attributes;
}

- (BOOL) isEqualToCreateTrailerSceneLayoutAttributes:(LXReorderableCollectionViewLayoutAttributes*) attributes {
    if (!attributes) {
        return NO;
    }
    
    if (self.editing != attributes.editing) {
        return NO;
    }
    
    return [super isEqual:attributes];
}

- (BOOL) isEqual:(id) object {
    if (self == object) {
        return YES;
    }
    
    if (![object isKindOfClass:[LXReorderableCollectionViewLayoutAttributes class]]) {
        return NO;
    }
    
    return [self isEqualToCreateTrailerSceneLayoutAttributes:object];
}

- (NSUInteger) hash {
    return [super hash] + (self.editing ? 1231 : 1237);
}

@end
