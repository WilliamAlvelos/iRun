//
//  cameraView.h
//  iRun
//
//  Created by William Alvelos on 19/03/15.
//  Copyright (c) 2015 William Alvelos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cameraView : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (nonatomic) cameraView *session;

@end
