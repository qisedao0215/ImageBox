//
//  imageViewController.m
//  ImageBox
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "imageViewController.h"


#import "ZXScrollView.h"

@interface imageViewController ()
@property(nonatomic,retain)NSArray *boxArray;
@end

@implementation imageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.boxArray=@[@"new_features_1.jpg",
                        @"new_features_2.jpg",
                        @"new_features_3.jpg",
                        @"new_features_4.jpg",
                        @"new_features_5.jpg",];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    ZXScrollView *viewImageOne=[[ZXScrollView alloc]initWithFrame:self.view.bounds];
//    [viewImage setValueOne:[UIImage imageNamed:@"new_features_2.jpg"] forScroll:@"new_features_2.jpg"];
    UIScrollView *scrViewBox=[[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrViewBox.delegate=viewImageOne;
    scrViewBox.contentSize=CGSizeMake(CGRectGetWidth(self.view.bounds)*5,CGRectGetHeight(self.view.bounds));
    for (int i=0; i<5; i++) {
        ZXScrollView *viewImage=[[ZXScrollView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.view.bounds)*i, 0, self.view.bounds.size.width,self.view.bounds.size.height)];
        NSString *str=[NSString stringWithFormat:@"new_features_%d.jpg",i+1];
        [viewImage setValueOne:[UIImage imageNamed:str] forScroll:@"new_features_2.jpg"];
        scrViewBox.delegate=viewImage;
        [scrViewBox addSubview:viewImage];
    }

    [self.view addSubview:scrViewBox];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
