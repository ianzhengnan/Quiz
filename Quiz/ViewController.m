//
//  ViewController.m
//  Quiz
//
//  Created by zhengna on 15-6-26.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLable;
@property (nonatomic, weak) IBOutlet UILabel *answerLable;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
    
        self.questions = @[@"From what is cognac made?",
                           @"What is 7 + 7?",
                           @"What is the captical of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [_questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    self.questionLable.text = self.questions[self.currentQuestionIndex];
    self.answerLable.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    
    self.answerLable.text = self.answers[self.currentQuestionIndex];
}

@end
