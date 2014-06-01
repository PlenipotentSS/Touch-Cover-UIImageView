//
//  SSViewController.m
//  TileImage
//
//  Created by Stevenson on 5/31/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "SSViewController.h"
#import "UIImage+TileImage.h"
#import "SSTapCoveredImageView.h"

@interface SSViewController ()

@property (weak,nonatomic) IBOutlet SSTapCoveredImageView *theImageView1;
@property (weak,nonatomic) IBOutlet SSTapCoveredImageView *theImageView2;
@property (weak,nonatomic) IBOutlet SSTapCoveredImageView *theImageView3;
@property (weak,nonatomic) IBOutlet SSTapCoveredImageView *theImageView4;

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *theImage = [UIImage imageNamed:@"coffee-cup.jpg"];
    CGFloat cropWidth = theImage.size.width/2-2;
    
    self.theImageView1.image = [theImage cropImageInRect:CGRectMake(0, 0, cropWidth, cropWidth)];
    self.theImageView2.image = [theImage cropImageInRect:CGRectMake(theImage.size.width/2+2, 0, cropWidth, cropWidth)];
    self.theImageView3.image = [theImage cropImageInRect:CGRectMake(0, theImage.size.width/2+2, cropWidth, cropWidth)];
    self.theImageView4.image = [theImage cropImageInRect:CGRectMake(theImage.size.width/2+2, theImage.size.width/2+2, cropWidth, cropWidth)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
