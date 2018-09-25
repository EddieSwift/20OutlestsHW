//
//  ViewController.m
//  20OutlestsHW
//
//  Created by Eduard Galchenko on 9/25/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (CGFloat) calculatingRandColors {
    
    return (float) (arc4random() % 256) / 255;
}

- (UIColor*) randomColor {
    
    CGFloat r = [self calculatingRandColors];
    CGFloat g = [self calculatingRandColors];
    CGFloat b = [self calculatingRandColors];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

- (UIColor*) shuffleCheckers {
    
    NSInteger random = arc4random() % 2;
    
    return random ? [UIColor whiteColor] : [UIColor redColor];
}

- (void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    self.chessBoard.backgroundColor = [self randomColor];

    for (UIView *views in self.allCheckers) {
        
        views.backgroundColor = [self shuffleCheckers];
    }

}

@end
