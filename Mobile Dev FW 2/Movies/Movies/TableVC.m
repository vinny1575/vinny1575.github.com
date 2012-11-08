//
//  TableVC.m
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "TableVC.h"
#import "MovieItem.h"
#import "ViewController.h"

@interface TableVC ()

@end

@implementation TableVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    MovieItem *movieItem = nil;
    
    group1 = [[NSMutableArray alloc] initWithCapacity:5];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Edward Scissor Hands";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group1 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Wreckit Ralf";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group1 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Possesion";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group1 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Finding Nemo";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group1 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Hotel Transylvania";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group1 addObject:movieItem];
    
    group2 = [[NSMutableArray alloc] initWithCapacity:5];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Edward Scissor Hands";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group2 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Wreckit Ralf";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group2 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Possesion";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group2 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Finding Nemo";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group2 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Hotel Transylvania";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group2 addObject:movieItem];
    
    group3 = [[NSMutableArray alloc] initWithCapacity:5];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Edward Scissor Hands";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group3 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Wreckit Ralf";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group3 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Possesion";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group3 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Finding Nemo";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group3 addObject:movieItem];
    movieItem = [[MovieItem alloc] init];
    movieItem.name = @"Hotel Transylvania";
    movieItem.image = [UIImage imageNamed:@"movie-reel.png"];
    movieItem.showTimes = @"9:00, 10:00, 12:00, 3:00, 7:00";
    [group3 addObject:movieItem];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 150)];
    [aView setBackgroundColor:[UIColor clearColor]];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(95, 0, 320, 30)];
    [label setBackgroundColor:[UIColor clearColor]];
    [aView addSubview:label];
    
    UILabel *loclabel = [[UILabel alloc] initWithFrame:CGRectMake(95, 25, 320, 30)];
    [loclabel setBackgroundColor:[UIColor clearColor]];
    [aView addSubview:loclabel];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"video.png"]];
    [imageView setFrame:CGRectMake(20, 0, 50, 50)];
    [aView addSubview:imageView];
    
    switch (section) {
        case 0:
            label.text = @"Regal Theater";
            loclabel.text = @"Jacksonville, FL";
            break;
        case 1:
            label.text = @"TinsleTown Theater";
            loclabel.text = @"Clay, FL";
            break;
        case 2:
            label.text = @"Carmike Theater";
            loclabel.text = @"Fleming Island, FL";
            break;
        default:
            break;
    }
    
    return aView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    MovieItem *movieItem = nil;
    cell.imageView.image = nil;
    switch (indexPath.section) {
        case 0:
            movieItem = [group1 objectAtIndex:indexPath.row];
            cell.textLabel.text = movieItem.name;
            cell.imageView.image = movieItem.image;
            cell.detailTextLabel.text = movieItem.showTimes;
            break;
        case 1:
            movieItem = [group2 objectAtIndex:indexPath.row];
            cell.textLabel.text = movieItem.name;
            cell.imageView.image = movieItem.image;
            cell.detailTextLabel.text = movieItem.showTimes;
            break;
        case 2:
            movieItem = [group3 objectAtIndex:indexPath.row];
            cell.textLabel.text = movieItem.name;
            cell.imageView.image = movieItem.image;
            cell.detailTextLabel.text = movieItem.showTimes;
            break;
        default:
            break;
    }

    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    switch (indexPath.section) {
        case 0:
            sentItem = [group1 objectAtIndex:indexPath.row];
            break;
        case 1:
            sentItem = [group2 objectAtIndex:indexPath.row];

            break;
        case 2:
            sentItem = [group3 objectAtIndex:indexPath.row];

            break;
        default:
            break;
    }
    
    [self performSegueWithIdentifier:@"detail" sender:self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ViewController *viewCon = [segue destinationViewController];
    viewCon.movieItem = sentItem;
}

@end
