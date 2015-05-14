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

@property UILabel *returnLabel;



@end

@implementation ViewController


-(void)makeArray{

    self.labelArray = [[NSArray alloc]initWithObjects:self.labelOne, self.labelTwo,self.labelThree, self.labelFour,self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.whichPlayerLabel.text = @"Player 1";



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#2 this method runs second
-(UILabel *)findLabelUsingPoint: (CGPoint)sender{






    for (UILabel *label in self.labelArray) {
        if(CGRectContainsPoint(label.frame, sender)){

            self.returnLabel = [[UILabel alloc] init];
            self.returnLabel = label;
        }
    }


    if ([self.whichPlayerLabel.text isEqualToString:@"Player 1"]) {
        self.returnLabel.text = @"X";

        self.returnLabel.textColor = [UIColor blueColor];
        self.whichPlayerLabel.text = @"O";
    }

    else {
        self.returnLabel.text = @"O";
        self.returnLabel.textColor = [UIColor redColor];
        self.whichPlayerLabel.text = @"X";
    }

    NSLog(@"%@",self.returnLabel.text);

    return self.returnLabel;


    }


//
//-(NSString *)whoWon {
//
//
//
//}

//#1 this method runs first

-(IBAction)onLabelTapped:(UITapGestureRecognizer *)sender{

    NSLog(@"I've been used!");
    CGPoint point = [sender locationInView:self.view];
    NSLog(@"%@",NSStringFromCGPoint(point));

    [self findLabelUsingPoint:point];





}

@end
