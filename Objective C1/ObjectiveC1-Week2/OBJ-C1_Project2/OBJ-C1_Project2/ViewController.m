//
//  ViewController.m
//  OBJ-C1_Project2
//
//  Created by Alan Gonzalez on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView{
    //setting up view programatically. Usually -loadview is not used when you are building from a xib or storyboard.
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //setting ui elements
    
    //title label****
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(240, 20, 320, 45)];
    [title setTextColor:[UIColor redColor]];
    [title.layer setCornerRadius:10];
    [title setTextAlignment:UITextAlignmentCenter];
    [title setBackgroundColor:[UIColor greenColor]];
    title.text = @"Harry Potter and the Sorcerer's Stone";
    [self.view addSubview:title];
    //title label*****
    
    //Author Label***
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(240, 120, 120, 45)];
    [author setTextColor:[UIColor orangeColor]];
    [author setBackgroundColor:[UIColor purpleColor]];
    [author setTextAlignment:UITextAlignmentRight];
    [author.layer setCornerRadius:10];
    author.text = @"Author";
    [self.view addSubview:author];
    //Author label***
    
    //Author Name Label***
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(410, 120, 120, 45)];
    [authorName setTextColor:[UIColor purpleColor]];
    [authorName setBackgroundColor:[UIColor orangeColor]];
    [authorName setTextAlignment:UITextAlignmentLeft];
    [authorName.layer setCornerRadius:10];
    authorName.text = @"J.K. Rowling";
    [self.view addSubview:authorName];
    //Author Name label***
    
    //Published Label***
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(240, 180, 120, 45)];
    [published setTextColor:[UIColor grayColor]];
    [published setBackgroundColor:[UIColor blueColor]];
    [published setTextAlignment:UITextAlignmentRight];
    [published.layer setCornerRadius:10];
    published.text = @"Published";
    [self.view addSubview:published];
    //Published label***
    
    //Published Date Label***
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(410, 180, 120, 45)];
    [publishedDate setTextColor:[UIColor blueColor]];
    [publishedDate setBackgroundColor:[UIColor grayColor]];
    [publishedDate setTextAlignment:UITextAlignmentLeft];
    [publishedDate.layer setCornerRadius:10];
    publishedDate.text = @"30 June 1997";
    [self.view addSubview:publishedDate];
    //Published Date label***
    
    //Summary Label***
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(240, 240, 120, 45)];
    [summary setTextColor:[UIColor yellowColor]];
    [summary setBackgroundColor:[UIColor lightGrayColor]];
    [summary setTextAlignment:UITextAlignmentRight];
    [summary.layer setCornerRadius:10];
    summary.text = @"Summary";
    [self.view addSubview:summary];
    //Summary label***
    
    //Summary Text Label***
    UILabel *summaryText = [[UILabel alloc] initWithFrame:CGRectMake(410, 240, 240, 150)];
    [summaryText setTextColor:[UIColor lightGrayColor]];
    [summaryText setBackgroundColor:[UIColor yellowColor]];
    [summaryText setTextAlignment:UITextAlignmentLeft];
    [summaryText.layer setCornerRadius:10];
    [summaryText setNumberOfLines:0];
    [summaryText setLineBreakMode:UILineBreakModeWordWrap];
    summaryText.text = @"The book is about a young boy who learns that he is actually a wizard. He is offered a chance to learn at a wizarding school call Hogwarts.";
    [self.view addSubview:summaryText];
    //Summary Text label***
    
    //nsarray
    
    NSArray *fiveItems = [[NSArray alloc] initWithObjects:@"Wizards ", @"Witches ", @"Sorcerer's ", @"Magic ", @"Friends ", nil];
    
    NSMutableString *itemsTogether = [[NSMutableString alloc] init];
    for (NSString *item in fiveItems) {
        [itemsTogether appendString:item];
    }
    
    //title label****
    UILabel *itemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(240, 400, 380, 45)];
    [itemsLabel setTextColor:[UIColor cyanColor]];
    [itemsLabel.layer setCornerRadius:10];
    [itemsLabel setTextAlignment:UITextAlignmentCenter];
    [itemsLabel setBackgroundColor:[UIColor brownColor]];
    itemsLabel.text = itemsTogether;
    [self.view addSubview:itemsLabel];
    //title label*****
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
