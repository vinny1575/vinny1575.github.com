//
//  EventsTableController.m
//  MonkeyCalendar
//
//  Created by Mikel Gonzalez on 9/27/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "EventsTableController.h"

@interface EventsTableController ()

@end

@implementation EventsTableController

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

    events = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"Vacation", @"title", @"Congo", @"location", @"12:00 AM", @"time", @"2012-12-15", @"date", nil],
            [NSDictionary dictionaryWithObjectsAndKeys:@"Play Donkey Kong", @"title", @"Home", @"location", @"4:00 PM", @"time", @"2012-10-15", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Swing from Vines", @"title", @"Jungle", @"location", @"12:00 PM", @"time", @"2012-11-5", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Jump with 9 more mokeys", @"title", @"On Bed", @"location", @"3:00 PM", @"time", @"2012-11-25", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Pick bugs", @"title", @"Home", @"location", @"2:00 PM", @"time", @"2013-1-15", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Evolve", @"title", @"Congo", @"location", @"12:00 AM", @"time", @"2012-10-15", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Eat a Banana", @"title", @"Table", @"location", @"1:00 PM", @"time", @"2012-10-01", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Shave", @"title", @"Bathroom", @"location", @"1:00 AM", @"time", @"2012-10-21", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Talk to Tarzan", @"title", @"Jungle", @"location", @"2:00 AM", @"time", @"2012-10-19", @"date", nil],
              [NSDictionary dictionaryWithObjectsAndKeys:@"Beat Chest", @"title", @"In tree", @"location", @"5:00 AM", @"time", @"2012-10-18", @"date", nil],nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return events.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"thisCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSDictionary *dict = [events objectAtIndex:indexPath.row];
    cell.textLabel.text = [dict objectForKey:@"title"];
    cell.detailTextLabel.text = [dict objectForKey:@"date"];
    
    // Configure the cell...
    
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
    currentEvent = [events objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"detail" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"detail"]) {
        DetailsTable *details = segue.destinationViewController;
        
        details.titleEvent = [currentEvent objectForKey:@"title"];
        details.time = [currentEvent objectForKey:@"time"];
        details.date = [currentEvent objectForKey:@"date"];
        details.location = [currentEvent objectForKey:@"location"];
    }

}

@end
