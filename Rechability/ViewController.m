//
//  ViewController.m
//  Rechability
//
//  Created by Pavankumar Arepu on 06/10/15.
//  Copyright (c) 2015 PPAM. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    if (networkStatus == NotReachable)
    {
        self.view.backgroundColor = [UIColor redColor];
        _myLabel.text = @"Wifi Not Avaialable";
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Internet Connection"
                                                     message:@"Not Available :-(" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        _myLabel.text = @"Wifi Avaialable";
        self.view.backgroundColor = [UIColor greenColor];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Internet Connection"
                                                     message:@"Available :-) " delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
