//
//  DetailsTable.m
//  MonkeyCalendar
//
//  Created by Mikel Gonzalez on 9/27/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "DetailsTable.h"
#import <EventKit/EventKit.h>

@interface DetailsTable ()

@end

@implementation DetailsTable

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
}

-(void)viewDidAppear:(BOOL)animated{
    self.titleField.text = self.titleEvent;
    self.locationField.text = self.location;
    self.timeField.text = self.time;
    self.dateField.text = self.date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 4;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}

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
}

- (IBAction)saveToCal:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Message" message:@"Save Event to Calendar?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil] show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
        
    }else{
        EKEventStore *eventStore=[[EKEventStore alloc] init];
        
        [eventStore requestAccessToEntityType:EKEntityTypeEvent completion:^(BOOL granted, NSError *error){
            EKEvent *addEvent=[EKEvent eventWithEventStore:eventStore];
            addEvent.title=self.titleField.text;
            
            NSDateFormatter *df = [[NSDateFormatter alloc] init];
            [df setDateFormat:@"yyyy-MM-dd hh:mm a"];
            NSDate *myDate = [df dateFromString: [NSString stringWithFormat:@"%@ %@", self.dateField.text, self.timeField.text]];
            NSLog(@"%@", myDate);
            addEvent.startDate = myDate;
            addEvent.endDate = myDate;
            addEvent.location = self.locationField.text;
            
            NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
            NSLog(@"%@", [def objectForKey:@"calDefault"]);
            EKCalendar *cal = [eventStore calendarWithIdentifier:[def objectForKey:@"calDefault"]];
            [addEvent setCalendar:cal];
            //        addEvent.alarms=[NSArray arrayWithObject:[EKAlarm alarmWithAbsoluteDate:addEvent.startDate]];
            [eventStore saveEvent:addEvent span:EKSpanThisEvent error:nil];
            
        }];
        

    }
}
@end
