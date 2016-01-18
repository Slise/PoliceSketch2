//
//  Sketch.m
//  PoliceSketch
//
//  Created by Benson Huynh on 2016-01-18.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Sketch.h"

@implementation Sketch

- (instancetype)init {
    self = [super init];
    if (self) {
        _eyes = @[[UIImage imageNamed:@"eyes_1.jpg"],
                  [UIImage imageNamed:@"eyes_2.jpg"],
                  [UIImage imageNamed:@"eyes_3.jpg"],
                  [UIImage imageNamed:@"eyes_4.jpg"],
                  [UIImage imageNamed:@"eyes_5.jpg"]];
        _noses = @[[UIImage imageNamed:@"nose_1.jpg"],
                   [UIImage imageNamed:@"nose_2.jpg"],
                   [UIImage imageNamed:@"nose_3.jpg"],
                   [UIImage imageNamed:@"nose_4.jpg"],
                   [UIImage imageNamed:@"nose_5.jpg"]];
        _mouths = @[[UIImage imageNamed:@"mouth_1.jpg"],
                    [UIImage imageNamed:@"mouth_2.jpg"],
                    [UIImage imageNamed:@"mouth_3.jpg"],
                    [UIImage imageNamed:@"mouth_4.jpg"],
                    [UIImage imageNamed:@"mouth_5.jpg"]];
    }
    return self;
    
}

//moving forward thru the eyes,, noses and mouths index

-(UIImage *)eyesForward {
    if (self.eyesIndex >= self.eyes.count-1) {
        self.eyesIndex = 0;
    } else {
        self.eyesIndex++;
    }
    return self.eyes[self.eyesIndex];
}

-(UIImage *)nosesForward {
    if (self.nosesIndex >= self.noses.count-1) {
        self.nosesIndex = 0;
    } else {
        self.nosesIndex++;
    }
    return self.noses[self.nosesIndex];
}

-(UIImage *)mouthsForward {
    if (self.mouthsIndex >= self.mouths.count-1) {
        self.mouthsIndex = 0;
    } else {
        self.mouthsIndex++;
    }
    return self.mouths[self.mouthsIndex];
}

//moving backward thru eyes, noses, and mouths index

-(UIImage *)eyesBackward {
    if (self.eyesIndex <= 0) {
        self.eyesIndex = (int)self.eyes.count -1;
    } else {
        self.eyesIndex--;
    }
    return self.eyes[self.eyesIndex];
}

-(UIImage *)nosesBackward {
    if (self.nosesIndex <= 0) {
        self.nosesIndex = (int)self.noses.count -1;
    } else {
        self.nosesIndex--;
    }
    return self.noses[self.nosesIndex];
}

-(UIImage *)mouthsBackward {
    if (self.mouthsIndex <= 0) {
        self.mouthsIndex = (int)self.mouths.count -1;
    } else {
        self.mouthsIndex--;
    }
    return self.mouths[self.mouthsIndex];
}


@end
