//
//  ViewController.h
//  ExposureTest
//
//  Created by Tyler Mairose on 7/26/18.
//  Copyright © 2018 Tyler Mairose. All rights reserved.
//

#import "VideoCamera.h"
using namespace cv;

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController<CvVideoCameraDelegate> {

    IBOutlet UIImageView *imageView;
}

@property (nonatomic, retain) CvVideoCamera *videoCamera;


@end

