//
//  ViewController.h
//  PLGuidePage
//
//  Created by 魏娟 on 16/8/27.
//  Copyright © 2016年 wj. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    ALPHA =0,
    BLUE =1,
    GREEN =2,
    RED =3
} PIXELS;

struct PLRang{
    int minx;
    int maxx;
    int miny;
    int maxy;
};
typedef struct PLRang PLRang;

/*struct PLColorRang{
    int r;
    int g;
    int b;
    PLRang left;
    PLRang middle;
    PLRang right;
};
typedef struct PLColorRang PLColorRang;



CG_INLINE PLColorRang
PLColorRangMake(int r, int g, int b, PLRang left, PLRang middle, PLRang right){
    PLColorRang color;
    color.r = r;
    color.g = g;
    color.b = b;
    color.left = left;
    color.middle = middle;
    color.right = right;
    
    return color;
}*/


/*CG_INLINE PLRang
PLRangMake(int minx, int maxx, int miny, int maxy){
    PLRang color;
    color.minx = minx;
    color.maxx = maxx;
    color.miny = miny;
    color.maxy = maxy;
    
    return color;
}

CG_EXTERN const PLRang PLRangZero
CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_2_0);*/


@interface ViewController : UIViewController


@end

