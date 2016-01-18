//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "Sketch.h"

@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *nosesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthsImageView;
@property (strong, nonatomic) Sketch *sketch;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.sketch = [[Sketch alloc] init];
    // Here is where you will create the buttons & image views and add them to the view.
}

- (IBAction)eyesForwardButton:(id)sender {
    self.eyesImageView.image = [self.sketch eyesForward];
}

- (IBAction)eyesBackwardButton:(id)sender {
    self.eyesImageView.image = [self.sketch eyesBackward];
}

- (IBAction)noseForwardButton:(id)sender {
    
    self.nosesImageView.image = [self.sketch nosesForward];
}

- (IBAction)noseBackwardButton:(id)sender {
    self.nosesImageView.image = [self.sketch nosesBackward];
}

- (IBAction)mouthForwardButton:(id)sender {
    self.mouthsImageView.image = [self.sketch mouthsForward];
}

- (IBAction)mouthBackwardButton:(id)sender {
    self.mouthsImageView.image = [self.sketch mouthsBackward];
}


@end
