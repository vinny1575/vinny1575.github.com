//
//  FirstViewController.m
//  MD-Week3
//
//  Created by Alan Gonzalez on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "BussinessObj.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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

    //add objects
    BussinessObj *bussinessObj = [BussinessObj new];
    bussinessObj.bussinessName = @"ACME Lumber";
    bussinessObj.latitude = 30.353916;
    bussinessObj.longitute = -81.650391;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Electric";
    bussinessObj.latitude = 30.372875;
    bussinessObj.longitute = -82.089844;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Sewage";
    bussinessObj.latitude = 30.263812;
    bussinessObj.longitute = -81.532288;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Co";
    bussinessObj.latitude = 30.17125;
    bussinessObj.longitute = -81.650391;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Water";
    bussinessObj.latitude = 30.211608;
    bussinessObj.longitute = -81.719055;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Plumbing";
    bussinessObj.latitude = 30.002517;
    bussinessObj.longitute = -81.812439;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Hardware";
    bussinessObj.latitude = 30.512583;
    bussinessObj.longitute = -81.743774;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Outlet";
    bussinessObj.latitude = 30.346806;
    bussinessObj.longitute = -81.463623;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Pets";
    bussinessObj.latitude = 30.076225;
    bussinessObj.longitute = -81.559753;
    [bussinesses addObject:bussinessObj];
    
    bussinessObj.bussinessName = @"ACME Department";
    bussinessObj.latitude = 30.462879;
    bussinessObj.longitute = -81.903076;
    [bussinesses addObject:bussinessObj];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
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
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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
}

@end
