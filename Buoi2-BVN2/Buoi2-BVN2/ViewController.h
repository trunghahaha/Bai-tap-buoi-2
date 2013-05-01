//
//  ViewController.h
//  Buoi2-BVN2
//
//  Created by doductrung on 5/1/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputTf;
- (IBAction)addTouch:(id)sender;
- (IBAction)sortTouch:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *resultView;
@end
