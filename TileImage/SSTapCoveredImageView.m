//
//  SShideableImageView.m
//  TileImage
//
//  Created by Stevenson on 5/31/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "SSTapCoveredImageView.h"
@interface SSTapCoveredImageView()

@property (nonatomic) BOOL isCovered;
@property (strong, nonatomic) UIView *coverView;

@end

@implementation SSTapCoveredImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib {
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    singleTap.numberOfTapsRequired = 1;
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:singleTap];
    
    self.coverView = [[UIView alloc] initWithFrame:self.bounds];
    self.coverView.backgroundColor = [UIColor whiteColor];
    [self insertSubview:self.coverView aboveSubview:self];
    [self.coverView setAlpha:1.f];
    self.isCovered = YES;
    
    UITapGestureRecognizer *coverTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    coverTap.numberOfTapsRequired = 1;
    self.userInteractionEnabled = YES;
    [self.coverView addGestureRecognizer:coverTap];
}


-(void)tapDetected{
    self.isCovered = !self.isCovered;
    if (self.isCovered) {
        [self.coverView setAlpha:1.f];
    } else {
        [self.coverView setAlpha:0.f];
    }
    
}

@end
