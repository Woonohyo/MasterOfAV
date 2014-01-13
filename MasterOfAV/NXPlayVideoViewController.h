//
//  NXPlayVideoViewController.h
//  MasterOfAV
//
//  Created by Wonhyo Yi on 2014. 1. 13..
//  Copyright (c) 2014년 NHN NEXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NXPlayVideoViewController : UIViewController
- (IBAction)playVideo:(id)sender;

// I need this to open an instance of UIImagePickerController as a pop up view.
- (BOOL) startMediaBrowserFromViewController: (UIViewController*)controller usingDelegate: (id)delegate;

@end
