//
//  ViewController.m
//  Buoi2-BVN2
//
//  Created by doductrung on 5/1/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
NSMutableArray * array;
BOOL done;
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    array = [[NSMutableArray alloc] init];
    self.inputTf.delegate = self;
    [self.resultView setText:@"Day so ban dau:"];
    [self.resultView setEditable:false];
    done = false;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) bubbleSort: (NSMutableArray *) array{
    float x[[array count]];
    for(int i=0; i < [array count]; i++){
        NSNumber *tmp = [array objectAtIndex:i];
        x[i] = [tmp floatValue];
    }
    for (int k = 0; k < [array count]; k++)
        for (int i = 0; i <[array count] -1 - k; i++)
            if (x[i] > x[i +1]){
                int temp = x[i];
                x[i] = x[i + 1];
                x[i + 1] = temp;
            }
    NSMutableString * s1 = [NSMutableString stringWithString:@"Ket qua:"];
    
    for (int k = 0; k < [array count]; k++){
        NSLog(@"%f", x[k]);
        [s1 appendFormat:@"\n%f", x[k]];
    }
    [self.resultView setText:s1];
    
}
- (IBAction)addTouch:(id)sender {
    if(done == false){
    NSString *s = self.inputTf.text;
    [array addObject:s];
    NSLog(@"Them %@",s);
    NSMutableString * s1 = [NSMutableString stringWithString:self.resultView.text];
    [s1 appendFormat:@"\n%@", s];
    [self.resultView setText:s1];
    }else{
        [self.resultView setText:@"Day so ban dau:"];
        done = false;
    }
}

- (IBAction)sortTouch:(id)sender {
    [self bubbleSort:array];
    array = [[NSMutableArray alloc] init];
    done = true;
}
@end
