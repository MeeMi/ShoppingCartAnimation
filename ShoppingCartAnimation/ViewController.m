//
//  ViewController.m
//  ShoppingCartAnimation
//
//  Created by 蔡强 on 2017/7/17.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "ShoppingCartTool.h"

@interface ViewController ()

/** 加入购物车按钮 */
@property (nonatomic, strong) UIButton *addButton;
/** 购物车按钮 */
@property (nonatomic, strong) UIButton *shoppingCartButton;
/** 商品数量label */
@property (nonatomic, strong) UILabel *goodsNumLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpUI];
}


- (void)setUpUI{
    // 加入购物车按钮
    self.addButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 120, self.view.frame.size.height - 50, 120, 50)];
    [self.view addSubview:self.addButton];
    self.addButton.backgroundColor = [UIColor redColor];
    [self.addButton setTitle:@"加入购物车" forState:UIControlStateNormal];
    [self.addButton addTarget:self action:@selector(addButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    // 购物车按钮
    self.shoppingCartButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 120 - 50 - 20, self.addButton.frame.origin.y, 50, 50)];
    [self.view addSubview:self.shoppingCartButton];
    [self.shoppingCartButton setTitle:@"购物车" forState:UIControlStateNormal];
    [self.shoppingCartButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    // 商品数量label
    self.goodsNumLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.shoppingCartButton.center.x, self.shoppingCartButton.frame.origin.y, 30, 15)];
    [self.view addSubview:self.goodsNumLabel];
    self.goodsNumLabel.backgroundColor = [UIColor redColor];
    self.goodsNumLabel.textColor = [UIColor whiteColor];
    self.goodsNumLabel.textAlignment = NSTextAlignmentCenter;
    self.goodsNumLabel.font = [UIFont systemFontOfSize:10];
    self.goodsNumLabel.layer.cornerRadius = 7;
    self.goodsNumLabel.clipsToBounds = YES;
    self.goodsNumLabel.text = @"99+";
}


/** 加入购物车按钮点击 */
- (void)addButtonClicked:(UIButton *)sender{
    [ShoppingCartTool addToShoppingCartWithGoodsImage:[UIImage imageNamed:@"hehe.jpg"] startPoint:self.addButton.center endPoint:self.shoppingCartButton.center completion:^(BOOL finished) {
        NSLog(@"结束了");
    }];
}


@end
