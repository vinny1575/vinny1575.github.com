//
//  MovieView.h
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieItem.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MovieView : UIViewController{
    MPMoviePlayerController *player ;
}
- (IBAction)stop:(id)sender;
- (IBAction)play:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *stop;
@property (weak, nonatomic) IBOutlet UIView *moviePView;
@property(nonatomic, strong)MovieItem *movieItem;
@end
