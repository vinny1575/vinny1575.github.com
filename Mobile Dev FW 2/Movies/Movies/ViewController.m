//
//  ViewController.m
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "ViewController.h"
#import "MovieView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.atitle.text = self.movieItem.name;
    self.showTimes.text = self.movieItem.showTimes;
    self.image.image = self.movieItem.image;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MovieView *MV = [segue destinationViewController];
    [MV setTitle:self.atitle.text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
