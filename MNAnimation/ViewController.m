//
//  ViewController.m
//  MNAnimation
//
//  Created by Mrunalini on 09/10/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)zoom_in:(id)sender {
    
    [self animateZoomWithSize:100];
    
    //[self animateZoomwithScale:100];
}

- (IBAction)zoom_out:(id)sender {
    
    [self animateZoomWithSize:-100];

    //[self animateZoomwithScale:-100];

}

- (IBAction)actionDirection:(id)sender {
    
    UIButton *button = sender;
    if (button.tag == 101)
    {
        [self upAnimation];
    }
    
    else if(button.tag == 107)
    {
        [self animateDownWithDuration:0.5 delay:0.1];
        
        
    }
    else if(button.tag == 103)
    {
        [self animateLeftWithDuration:0.5 delay:0.1];
        
        
    }
    else if(button.tag == 105)
        
    {
        
        [self animateRightWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 100)
    {
        
        [self animateNourthWestWithDuration:0.5 delay:0.1];
        
    }
    else if(button.tag == 102)
    {
        
        [self animateNourthEastWithDuration:0.5 delay:0.1];
        
    }
    else if(button.tag == 106)
    {
        
        [self animateSouthWestWithDuration:0.5 delay:0.1];
        
    }
    else if(button.tag == 108)
    {
        
        [self animateSouthEastWithDuration:0.5 delay:0.1];
        
    }
    
}


-(void)upAnimation {
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Up animation finished");
        }
    }];
}

-(void)animateLeftWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Left Animation Finished");
        }
    }];
}

-(void)animateDownWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Down Animation Finished");
        }
    }];
}

-(void)animateRightWithDuration:(NSTimeInterval)time
delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"Right Animation Finished");
            
        }
    }];
}
    
    
    -(void)animateNourthWestWithDuration:(NSTimeInterval)time
delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"NourthWest Animation Finished");
            
        }
    }];
}
    
    
    -(void)animateNourthEastWithDuration:(NSTimeInterval)time
delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"NourthEast Animation Finished");
            
        }
    }];
}
    
    -(void)animateSouthWestWithDuration:(NSTimeInterval)time
delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"SouthWest Animation Finished");
            
        }
    }];
}
    
    
    -(void)animateSouthEastWithDuration:(NSTimeInterval)time
delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"SouthEast Animation Finished");
            
        }
    }];
}

-(void)animateZoomwithSize:(CGFloat)size
{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ball.transform =CGAffineTransformMakeScale(size, size);
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Zoom_in animation Finished");
        }
    }];
}

-(void)animateZoomWithSize:(CGFloat) size

{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width + size, self.ball.frame.size.height + size)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"Zoom_out Animation Finished");
        }
    }];
    
}



@end
