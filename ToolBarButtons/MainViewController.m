//
//  ViewController.m
//  ToolBarButtons
//
//  Created by Gilbert on 6/2/13.
//  Copyright (c) 2013 Gilbert. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        // set up the nav bar button;
        UIBarButtonItem *btnShow = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(toggleToolBar)];
        self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:btnShow,nil];
        
        // set up the tool bar buttons;
        UIBarButtonItem *btnRed = [[UIBarButtonItem alloc]initWithTitle:@"Red" style:UIBarButtonItemStyleDone target:self action:@selector(btnRedTouched)];
        
        UIBarButtonItem *btnBlue = [[UIBarButtonItem alloc]initWithTitle:@"Blue" style:UIBarButtonItemStyleDone target:self action:@selector(btnBlueTouched)];
        
        UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        
        UIBarButtonItem *btnGreen = [[UIBarButtonItem alloc]initWithTitle:@"Green" style:UIBarButtonItemStyleDone target:self action:@selector(btnGreenTouched)];
        
        self.toolbarItems = [NSArray arrayWithObjects:btnRed,btnBlue,spacer,btnGreen, nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)toggleToolBar{
    BOOL barState = self.navigationController.toolbarHidden;
    [self.navigationController setToolbarHidden:!barState animated:YES];
}

- (void)btnRedTouched{
    self.view.backgroundColor = [UIColor redColor];
}

- (void)btnBlueTouched{
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void)btnGreenTouched {
    self.view.backgroundColor =  [UIColor greenColor];
}
@end
