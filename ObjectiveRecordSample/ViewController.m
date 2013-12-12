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

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *ageField;

- (IBAction)didSaveButtonTap:(id)sender;

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

- (IBAction)didSaveButtonTap:(id)sender {
    Person *person = [Person create];
    person.name = _nameField.text;
    person.age = @([_ageField.text integerValue]);
    [person save];

    [self performSegueWithIdentifier:@"UnwindToListViewSegue" sender:self];

    NSLog(@"Person name = %@, age = %@", person.name, person.age);
}

@end
