//
//  ViewController.m
//  MD-Week1
//
//  Created by Alan Gonzalez on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myTableView;

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
    
    NSString *fileString = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"food" ofType:@"csv"] encoding:NSUTF8StringEncoding error:nil];
    foodArray = [NSMutableArray arrayWithArray:[fileString componentsSeparatedByString:@","]];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setMyTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return foodArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"myCell";
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.imageView.image = [UIImage imageNamed:@"star"];
    cell.title.text = [foodArray objectAtIndex:indexPath.row];
    cell.subTitle.text = @"Subtitle for Cell";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"trans" sender:self];
}

//Custom edit button
- (IBAction)editBtn:(id)sender {
    //if the table is in editing mode it closes it out and visa versa.
    if (!myTableView.editing) {
        [(UIButton*)sender setTitle:@"Done" forState:UIControlStateNormal];
        [myTableView setEditing:YES animated:YES];
    }else {
        [(UIButton*)sender setTitle:@"Edit" forState:UIControlStateNormal];
        [myTableView setEditing:NO animated:YES];
    }
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    //removes itm fromt eh array and reloads the table
    [foodArray removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
}

@end
