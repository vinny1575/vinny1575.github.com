//
//  VideoViewController.h
//  PicTaker
//
//  Created by Mikel Gonzalez on 10/10/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/UTCoreTypes.h>

@interface VideoViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    UIImagePickerController *imagePickerController;
    NSURL *recordedVideoURL;
}
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
