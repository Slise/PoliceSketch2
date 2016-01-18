//
//  Sketch.h
//  PoliceSketch
//
//  Created by Benson Huynh on 2016-01-18.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sketch : NSObject

@property (nonatomic, strong) NSArray *noses;
@property (nonatomic, strong) NSArray *eyes;
@property (nonatomic, strong) NSArray *mouths;
@property (atomic, assign) int nosesIndex;
@property (atomic, assign) int eyesIndex;
@property (atomic, assign) int mouthsIndex;

-(UIImage *)nosesForward;
-(UIImage *)nosesBackward;
-(UIImage *)eyesForward;
-(UIImage *)eyesBackward;
-(UIImage *)mouthsForward;
-(UIImage *)mouthsBackward;

@end
