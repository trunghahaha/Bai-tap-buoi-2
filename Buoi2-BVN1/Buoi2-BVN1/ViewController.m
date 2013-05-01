//
//  ViewController.m
//  Buoi2-BVN1
//
//  Created by doductrung on 5/1/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableString *s ;
    for(int k=0; k<3; k++){
        s = [[NSMutableString alloc] initWithString:@""];
        for(int j=0; j<=k; j++){
            [s appendString:@" "];
        }
        int kc;
        int sokt;
        int demkt = 0;
        if(k ==0 || k == 2){
            kc =4;
            sokt = 5;
        }else{
            kc = 2;
            sokt = 2*5-1;
        }
        [s appendString:@"*"];
        int dem = 0;
        for(int i = 1; i< 20; i++){
            dem++;
            if(demkt >= sokt) break;
            if(dem == kc){
                [s appendString:@"*"];
                demkt++;
                dem = 0;
            }else{
                [s appendString:@" "];
            }
        }
        NSLog(@"%@", s);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
