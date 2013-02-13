//
//  testUniversalAppViewController.m
//  testUniversalApp
//
//  Created by Raymond Wang on 2/13/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import "testUniversalAppViewController.h"
#import "VideoViewController.h"

@interface testUniversalAppViewController ()

@end

@implementation testUniversalAppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goToVideoView
{
    VideoViewController *videoVC;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        videoVC= [[VideoViewController alloc] initWithNibName:@"VideoViewController_iPad" bundle:nil];
    }
    else
    {
        videoVC= [[VideoViewController alloc] initWithNibName:@"VideoViewController_iPhone" bundle:nil];
    }
    
    videoVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:videoVC animated:YES completion:nil];
    [videoVC release];

}

@end
