//
//  ViewController.m
//  ArchivePlist
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建归档对象
    NSArray* arr=@[@1,@2,@3];
    //创建归档路径
    NSString* path=NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    //设置文件路径
    NSString* filePath=[path stringByAppendingPathComponent:@"arr.plist"];
    //写入文件
    [arr writeToFile:filePath atomically:YES];
    
    NSLog(@"%@",path);
}



@end
