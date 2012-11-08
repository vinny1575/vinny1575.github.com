//
//  TwitterTable.m
//  twetter
//
//  Created by Mikel Gonzalez on 10/3/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "TwitterTable.h"
#import <Accounts/Accounts.h>
#import <Twitter/Twitter.h>

@interface TwitterTable ()

@end

@implementation TwitterTable

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadTwitterFeeds{
    ACAccountStore *store = [[ACAccountStore alloc] init];
    ACAccountType *type = [store accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    
    //request access with block
    [store requestAccessToAccountsWithType:type options:nil completion:^(BOOL granted, NSError* error){
        if (granted) {
            accounts = [store accountsWithAccountType:type];
            [self getPosts];
        }
    
    }];
}

-(void)getPosts{
    ACAccount *currentAccount = [accounts objectAtIndex:0];
    NSString *userTimelineURL = @"https://api.twitter.com/1/statuses/home_timeline.json";
    TWRequest *request = [[TWRequest alloc] initWithURL:[NSURL URLWithString:userTimelineURL] parameters:nil requestMethod:TWRequestMethodGET];
    [request setAccount:currentAccount];
    //get data
    [request performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
        if ([urlResponse statusCode] == 200) {
            tweets = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:nil];
            if (tweets != nil)
            { 
                [self.tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
                [alert dismissWithClickedButtonIndex:0 animated:YES];
            }
        }
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadTwitterFeeds];
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
    return tweets.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TweetCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSDictionary *tweet = [tweets objectAtIndex:indexPath.row];
    NSString *text = [tweet objectForKey:@"text"];
//    NSString *name = [[tweet objectForKey:@"user"] objectForKey:@"name"];
    
    cell.textLabel.text = text;
    cell.detailTextLabel.text = [[tweet objectForKey:@"user"] objectForKey:@"created_at"];
    
    //get image data with url
    NSString *imageUrl = [[tweet objectForKey:@"user"] objectForKey:@"profile_image_url"];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
    
    cell.imageView.image = [UIImage imageWithData:data];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *vCon = segue.destinationViewController;
    vCon.tweet = tweetSeg;
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
    tweetSeg = [tweets objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"tweetSeg" sender:self];
}

- (IBAction)refresh:(id)sender {
    alert = [[UIAlertView alloc] initWithTitle:@" " message:@" " delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    UIActivityIndicatorView *progress= [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(125, 50, 30, 30)];
    progress.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    [alert addSubview:progress];
    [progress startAnimating];
    
    [alert show];
    [self getPosts];
}

- (IBAction)tweet:(id)sender {
    tweetView = [[TWTweetComposeViewController alloc] init];
    TWTweetComposeViewControllerCompletionHandler
    completionHandler =
    ^(TWTweetComposeViewControllerResult result) {
        [self getPosts];
        [self dismissModalViewControllerAnimated:YES];
    };
    [tweetView setCompletionHandler:completionHandler];
    [tweetView setInitialText:@"Posted From"];
    [self presentModalViewController:tweetView animated:YES];
    
}
@end
