//
//  TKTestNode.m
//  Sample
//
//  Created by Gong Sha on 18/12/2016.
//  Copyright © 2016 Facebook, Inc. All rights reserved.
//

#import "TKTestNode.h"

@interface TKTestNode()

@property(nonatomic,strong)ASDisplayNode* bgNode;

@property(nonatomic,strong)ASDisplayNode* bgNode2;
@end

@implementation TKTestNode

-(instancetype)init{
    self = [super init];
    
    if (self) {
//        self.backgroundColor = [UIColor redColor];
//        self.bgNode = [ASDisplayNode new];
//        self.bgNode.preferredFrameSize = CGSizeMake(10, 10);
////        self.bgNode.frame = CGRectMake(0, 0, 1, 1);
//        self.bgNode.backgroundColor = [UIColor yellowColor];
//        self.bgNode.flexGrow = YES;
//        [self addSubnode:self.bgNode];
//        
//        self.bgNode2 = [ASDisplayNode new];
//        self.bgNode2.preferredFrameSize = CGSizeMake(10, 10);
//        //        self.bgNode.frame = CGRectMake(0, 0, 1, 1);
//        self.bgNode2.backgroundColor = [UIColor blueColor];
//        self.bgNode2.flexGrow = YES;
//        
//        [self addSubnode:self.bgNode2];
    }
    
    return self;
}


-(ASLayoutSpec*)layoutSpecThatFits:(ASSizeRange)constrainedSize{
    
//    return [ASRelativeLayoutSpec relativePositionLayoutSpecWithHorizontalPosition:ASRelativeLayoutSpecPositionStart verticalPosition:ASRelativeLayoutSpecPositionStart sizingOption:(ASRelativeLayoutSpecSizingOptionMinimumHeight |ASRelativeLayoutSpecSizingOptionMinimumWidth) child:self.bgNode];
    
    return  [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical spacing:8.0 justifyContent:ASStackLayoutJustifyContentStart alignItems:ASStackLayoutAlignItemsStretch children:self.subnodes];
//    ASStackLayoutSpec *verticalStackSpec = [ASStackLayoutSpec verticalStackLayoutSpec];
//    verticalStackSpec.spacing = 20;
//    verticalStackSpec.justifyContent = ASStackLayoutJustifyContentCenter;
//    verticalStackSpec.children = self.subnodes;

//    return verticalStackSpec;
}

@end
