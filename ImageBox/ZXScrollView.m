//
//  ZXScrollView.m
//  ImageBox
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "ZXScrollView.h"

@implementation ZXScrollView
{
    UIImage *imageZX;
    UIImageView *imageViewZXZy;
    NSString *str;

}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        imageViewZXZy=[[UIImageView alloc]initWithFrame:self.bounds];

        self.delegate=self;
        self.contentSize=CGSizeMake(CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds));
        self.maximumZoomScale=2.0;
        self.minimumZoomScale=0.6;
        [self addSubview:imageViewZXZy];

    }
    return self;
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    
    return imageViewZXZy;
}
-(void)setValueOne:(UIImage*)value forScroll:(NSString *)key
{
//    imageViewZXZy.image=[UIImage imageNamed:key];
    imageViewZXZy.image=value;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
