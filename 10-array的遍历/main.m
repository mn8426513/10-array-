//
//  main.m
//  10-array的遍历
//
//  Created by Mac on 14-8-29.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>
#pragma mark 快速遍历
void arrayScan2(){
      NSArray *array =[NSArray arrayWithObjects:@"1",@"I",@"love",@"you",@"girl", nil ];
    
     for (id obj in array){
 }
    


}

#pragma mark 通过block来遍历数组
void arrayScan3(){
      NSArray *array =[NSArray arrayWithObjects:@"1",@"I",@"love",@"you",@"girl", nil ];
     [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"id:%@,idx:%zi",obj,idx);
    }];
 

}

#pragma mark 通过遍历器来遍历数组
void arrayScan4(){
    NSArray *array =[NSArray arrayWithObjects:@"1",@"I",@"love",@"you",@"girl", nil ];
    
    NSEnumerator *enume = [array objectEnumerator];
    
    NSEnumerator *enume1 = [array reverseObjectEnumerator];
    
    id obj = nil;

    while(obj=[enume nextObject]){
        NSLog(@"Obj=%@",obj);
    }   
     id obj2 =  [enume allObjects];
    NSLog(@"%@",obj2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        arrayScan3();
    }
    return 0;
}
