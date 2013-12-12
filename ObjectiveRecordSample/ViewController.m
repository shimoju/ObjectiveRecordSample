//
//  ViewController.m
//  ObjectiveRecordSample
//
//  Created by Hiroshi Shimoju on 2013/12/12.
//  Copyright (c) 2013年 shimoju. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    for(Person *person in [Person all]) {
        NSLog(@"Person name = %@, age = %@", person.name, person.age);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
