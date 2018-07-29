//
//  ViewController.m
//  ExposureTest
//
//  Created by Tyler Mairose on 7/26/18.
//  Copyright © 2018 Tyler Mairose. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupCamera];
    [self enableHighRes];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setupCamera {
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.delegate = self;
    
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.videoCamera.rotateVideo = YES;
    self.videoCamera.grayscaleMode = TRUE;
    self.videoCamera.exposureOn = TRUE;
    
}

-(void) enableHighRes {
    if (self.videoCamera.running == TRUE) {
        [self.videoCamera stop];
    }
    
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset1280x720;
    //self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset1920x1080;
    self.videoCamera.defaultFPS = 10;
    
    [self.videoCamera start];
}

-(void) enableLowRes {
    if (self.videoCamera.running == TRUE) {
        [self.videoCamera stop];
    }
    
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset352x288;
    self.videoCamera.defaultFPS = 30;
    
    [self.videoCamera start];
}

#pragma mark - Protocol CvVideoCameraDelegate

#ifdef __cplusplus
- (void)processImage:(Mat&)image;
{
    
}
#endif


@end
