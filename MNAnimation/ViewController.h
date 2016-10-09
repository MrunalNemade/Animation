//
//  ViewController.h
//  MNAnimation
//
//  Created by Mrunalini on 09/10/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ball;

- (IBAction)zoom_in:(id)sender;

- (IBAction)zoom_out:(id)sender;

- (IBAction)actionDirection:(id)sender;


@end

