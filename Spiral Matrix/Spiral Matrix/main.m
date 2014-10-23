//
//  main.m
//  Spiral Matrix
//
//  Created by Admin on 10/23/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#define valid(i, j) 0 <= i && i < m && 0 <= j && j < n && matrix[i][j] == [NSNull null]

void printMatrix (NSMutableArray *matrix){
    NSMutableString *buffer= [[NSMutableString alloc] init];
    for(NSArray *row in matrix){
        for(NSNumber *cell in row){
            [buffer appendFormat:@"%4d", [cell intValue]];
        }
        [buffer appendString:@"\n"];
    }
    NSLog(@"\n%@", buffer);
}

NSMutableArray* initSquareMatrix(int size){
    NSMutableArray *matrix = [[NSMutableArray alloc] initWithCapacity: size];
    for (int i=0; i<size; i++) {
        matrix[i] = [[NSMutableArray alloc] initWithCapacity: size];
        for (int j=0; j<size; j++) {
            matrix[i][j] = [NSNull null];
        }
    }
    return matrix;
}

 NSMutableArray* createSpiralMatrix(int size){
    
    int i, j, m = size;
    int n = size;
    NSMutableArray *matrix = initSquareMatrix(size);
    //for (i = 1; i < m; i++) {
      //  int val = [(NSNumber *)[matrix objectAtIndex:i-1] intValue];
      //  matrix[i] = [NSNumber numberWithInt: val + m];
    //}
    
    int dx = 1, dy = 0, val = 0, t;
    j = 0;
    for (i = 0;  valid(i, j); i += dy, j += dx ) {
        for (;  valid(i, j);  j += dx, i += dy){
            val++;
            matrix[i][j] = [NSNumber numberWithInt: val];
        }
        j -= dx; i -= dy;
        t = dy; dy = dx; dx = -t;
    }

     return matrix;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Spiral Matrix");
        int n = 5;
        NSMutableArray *spiralMatrix = createSpiralMatrix(n);
        printMatrix(spiralMatrix);
    }
    return 0;
}
