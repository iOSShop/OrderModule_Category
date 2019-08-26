//
//  ViewController.m
//  OrderModule_Category
//
//  Created by Cai Cai on 2019/8/26.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "ViewController.h"
#import "CCMediator+OrderModule.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clickButton:(id)sender {
    UIViewController *viewController = [[CCMediator sharedInstance] Order_viewControllerForMakeWithGoodsID:@(10) goodsCount:20 success:^(NSString * _Nonnull successString) {
        NSLog(@"%@", successString);
    }];
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:viewController] animated:YES completion:nil];
}

@end
