//
//  MovieView.m
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "MovieView.h"

@interface MovieView ()

@end

@implementation MovieView

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
    NSString *url = @"http://pdl.stream.aol.com/pdlext/aol/brightcove/ame/201210/01/383/wreckitralph_trlr_02_480p_dl.mov";
    
    player = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:url]];
    player.view.frame = CGRectMake(0, 0, 320, 200);
    [self.moviePView addSubview:player.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stop:(id)sender {
    [player stop];
}

- (IBAction)play:(id)sender {
    [player play];
}
@end
