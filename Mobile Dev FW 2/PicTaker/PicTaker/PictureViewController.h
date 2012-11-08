//
//  PictureViewController.h
//  PicTaker
//
//  Created by Mikel Gonzalez on 10/10/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    UIImagePickerController *imagePickerController;
    UIImage *originalImg;
    UIImage *editedImg;
}
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
