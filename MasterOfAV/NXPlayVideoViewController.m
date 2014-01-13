//
//  NXPlayVideoViewController.m
//  MasterOfAV
//
//  Created by Wonhyo Yi on 2014. 1. 13..
//  Copyright (c) 2014년 NHN NEXT. All rights reserved.
//

#import "NXPlayVideoViewController.h"

// this enables me to use the UIImagePickerController in my class.
// PickerController offers a basic, customizable UI for taking pictures and recording movies.
@interface NXPlayVideoViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@end

@implementation NXPlayVideoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"PlayVideoViewController has called");
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playVideo:(id)sender {
    [self startMediaBrowserFromViewController:self usingDelegate:self];
}

- (BOOL)startMediaBrowserFromViewController:(UIViewController *)controller usingDelegate:(id)delegate {
    // 1 - Validation
    if (([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum] == NO) || (delegate == nil) || (controller == nil)) {
        return NO;
    }
    // 2 - Get image picker
    UIImagePickerController *mediaUI = [[UIImagePickerController alloc] init];
    mediaUI.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    mediaUI.mediaTypes = [[NSArray alloc] initWithObjects: (NSString *) kUTTypeMovie, nil];
    
    // Hides the controls for moving and scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    mediaUI.allowsEditing = YES;
    mediaUI.delegate = delegate;
    
    // 3 - Display image picker
    [controller presentViewController:mediaUI animated:YES completion:NULL];
    return YES;
}
@end
