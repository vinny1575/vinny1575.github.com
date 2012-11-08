//
//  VideoViewController.m
//  PicTaker
//
//  Created by Mikel Gonzalez on 10/10/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

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
    imagePickerController.sourceType=UIImagePickerControllerSourceTypeCamera;
    imagePickerController.mediaTypes = [[NSArray alloc] initWithObjects: (NSString *) kUTTypeMovie, nil];
    [imagePickerController setAllowsEditing:YES];
    [self presentViewController:imagePickerController animated:YES completion:nil];
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    recordedVideoURL= [info objectForKey:UIImagePickerControllerMediaURL];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    UISaveVideoAtPathToSavedPhotosAlbum(recordedVideoURL.path, self, @selector(video:didFinishSavingWithError:contextInfo:), NULL);
}

-(void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo{
    NSLog(@"Finished with error: %@", error);
    [[[UIAlertView alloc] initWithTitle:@"Message" message:@"Video Saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}
@end
