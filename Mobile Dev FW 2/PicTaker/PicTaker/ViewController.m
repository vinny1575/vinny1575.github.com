//
//  ViewController.m
//  PicTaker
//
//  Created by Mikel Gonzalez on 10/10/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)album:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    [imagePickerController setSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    [imagePickerController setAllowsEditing:YES];
    [self presentViewController:imagePickerController animated:YES completion:nil];
}
@end
