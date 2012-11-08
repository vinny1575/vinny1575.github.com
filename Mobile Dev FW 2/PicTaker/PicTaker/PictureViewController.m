//
//  PictureViewController.m
//  PicTaker
//
//  Created by Mikel Gonzalez on 10/10/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "PictureViewController.h"

@interface PictureViewController ()

@end

@implementation PictureViewController

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
	// Do any additional setup after loading the view.
    imagePickerController = [[UIImagePickerController alloc] init];
    [imagePickerController setDelegate:self];
    [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    [imagePickerController setAllowsEditing:YES];
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

-(void)viewDidAppear:(BOOL)animated{

}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    editedImg = [info objectForKey:UIImagePickerControllerEditedImage];
    originalImg = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    if (!image) image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)save:(id)sender {
    UIImageWriteToSavedPhotosAlbum(editedImg, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
    UIImageWriteToSavedPhotosAlbum(originalImg, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
}

- (void)               image: (UIImage *) image
    didFinishSavingWithError: (NSError *) error
                 contextInfo: (void *) contextInfo{
    NSLog(@"Finished with error: %@", error);
    
    [[[UIAlertView alloc] initWithTitle:@"Message" message:@"Image Saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    
}

@end
