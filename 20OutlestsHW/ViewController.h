//
//  ViewController.h
//  20OutlestsHW
//
//  Created by Eduard Galchenko on 9/25/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *chessBoard;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *whiteCellsCollection;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *allCheckers;

@end

