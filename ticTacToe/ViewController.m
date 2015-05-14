//
//  ViewController.m
//  ticTacToe
//
//  Created by Alex Santorineos on 5/14/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;

@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property NSArray *labelArray;



@end

@implementation ViewController


-(void)makeArray{

    self.labelArray = [[NSArray alloc]initWithObjects:self.labelOne, self.labelTwo,self.labelThree, self.labelFour,self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)findLabelUsingPoint: (CGPoint)sender{






    for (UILabel *label in self.labelArray) {
        //if(CGRectContainsPoint(self.labelArray[i].frame, sender)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1"]) {
            label.text = @"something";
        } else {

        }

    }
}

-(IBAction)onLabelTapped:(UITapGestureRecognizer *)sender{


    CGPoint point = [sender locationInView:self.view];


    [self findLabelUsingPoint:point];



}

@end
