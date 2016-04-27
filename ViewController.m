//
//  ViewController.m
//  AlertControllerTestiOS8
//
//  Created by Celena Haase on 4/13/16.
//  Copyright © 2016 Celena Haase. All rights reserved.
//
//  from this website good for the Cycle App
//  https://www.invasivecode.com/weblog/uialertcontroller-alert-action-sheet/

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   /*
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:kZeroDistanceTitle
                                                    message:kZeroDistanceMessage
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Recalculate", nil];
    alert.tag = 202;
    [alert show];
    [alert release];*/
    // Do any additional setup after loading the view, typically from a nib.

}

/*- (IBAction)actionSheetButtonPressed:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Start your career boldly"
                                                                   message:@"Because in life there is no reset button."
                                                            preferredStyle:UIAlertControllerStyleActionSheet]; //
    
    
   
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Choose planning"
                style:UIAlertActionStyleDefault
                handler:^(UIAlertAction * action){
                    NSLog(@"You pressed button one");
                                                         }]; // 2
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"Or let life be random"
                style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                    NSLog(@"You pressed button two");
                                                           }]; // 3
    //the matrix - blue or red pill ? reality or adventure
    // could it be a function like play round tapped?
    
    [alert addAction:firstAction]; // 4
    [alert addAction:secondAction]; // 5
    
    [self presentViewController:alert animated:YES completion:nil]; // 6

}
*/

- (IBAction)actionSheetButtonPressed:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Your life"
                                                                   message:@"Your choices make it happen."
                                                            preferredStyle:UIAlertControllerStyleActionSheet]; // 1
    
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Plan your career"
                                                          style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                              NSLog(@"You pressed button one");
                                                              self.testLabel.text = @"Let's start brainstorming some ideas about what you like to accomplish. This is the part where you Dream Big. What would you do if you could do anything? ";
                                                          }]; // 2
    
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"Take a risk"
                                                           style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                               //change text field here or later?
                                                               self.testLabel.text = @"What are other people doing that interests you? What would you like to be a part of? ";
                                                               NSLog(@"You pressed button two");
                                                           }]; // 3
    
     //compare the format of other version in homeowner
    //alert.addAction(firstAction)
    
    [alert addAction:firstAction]; // 4
    [alert addAction:secondAction]; // 5
    
    //now written as
    //presentViewController(alert, animated: true, completion: nil)
    
    [self presentViewController:alert animated:YES completion:nil]; // 6
}

@end
