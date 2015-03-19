//
//  AVCamPreviewView.h
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "camView.h"

@class AVCaptureSession;

@interface AVCamPreviewView : UIView

@property (nonatomic) camView *session;

@end