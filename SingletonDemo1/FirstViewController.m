//
//  FirstViewController.m
//  SingletonDemo1
//
//  Created by tennyxu on 06/08/2017.
//  Copyright © 2017 tennyxu. All rights reserved.
//

#import "FirstViewController.h"
#import "DogSingleton.h"

@interface FirstViewController (){
    NSMutableArray *p_array;
}

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    p_array = [[NSMutableArray alloc] init];
    DogSingleton *husky = [DogSingleton shareInstance];
    husky.name = @"husky";
    husky.age = 10;
    NSLog(@"%@",husky);
    
    
    DogSingleton *alaskan = [DogSingleton shareInstance];
    alaskan.name = @"alaskan";
    alaskan.age = 20;
    NSLog(@"%@",alaskan);


    DogSingleton *ChineseRuralDog = [[DogSingleton alloc] init];
    ChineseRuralDog.name = @"ChineseRuralDog";
    ChineseRuralDog.age = 100;
    NSLog(@"%@",ChineseRuralDog);

    
    DogSingleton *shibaLnu = [ChineseRuralDog copy];
    shibaLnu.name = @"shibaLnu";
    shibaLnu.age = 30;
    NSLog(@"%@",shibaLnu);

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
