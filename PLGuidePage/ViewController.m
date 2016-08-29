//
//  ViewController.m
//  PLGuidePage
//
//  Created by 魏娟 on 16/8/27.
//  Copyright © 2016年 wj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int *plarr;
    UIImageView *imageview_2;
    //UIImageView *imageview;
}

@property (nonatomic, strong) NSMutableArray *arr;
@end



@implementation ViewController


+ (UIColor *)colorWithHexString:(NSString *)stringToConvert {
    NSScanner *scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) return nil;
    return [ViewController colorWithRGBHex:hexNum];
}

+ (UIColor *)colorWithRGBHex:(UInt32)hex {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

+ (UInt32)uint32WithHexString:(NSString *)stringToConvert {
    NSScanner *scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) return 0;
    return hexNum;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"login_main_icon"];
    CGSize imgSize = image.size;
    
    
    plarr = (int *)malloc(imgSize.width * imgSize.height *sizeof(int));
    _arr = [[NSMutableArray alloc] init];
    
    [self initColorPL:@{@"name":@"0x709914", @"value":@(1), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xaf222c", @"value":@(2), @"y":@(0), @"x":@(0)}];
             
             [self initColorPL:@{@"name":@"0xc32f29", @"value":@(3), @"left":@(1), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xd73d27", @"value":@(4), @"left":@(4), @"right":@(2), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xc32f29", @"value":@(5), @"right":@(1), @"y":@(0), @"x":@(0)}];
             
             [self initColorPL:@{@"name":@"0xd73d27", @"value":@(6), @"left":@(2), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xeb4a25", @"value":@(7), @"left":@(3), @"right":@(5), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xff5722", @"value":@(8), @"left":@(8), @"right":@(6), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xeb4a25", @"value":@(9), @"left":@(9), @"right":@(3), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xd73d27", @"value":@(10), @"right":@(4), @"y":@(0), @"x":@(0)}];
             
             [self initColorPL:@{@"name":@"0xff5722", @"value":@(11), @"left":@(6), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xff6f2d", @"value":@(12), @"left":@(7), @"right":@(10), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xff8838", @"value":@(13), @"left":@(13), @"right":@(11), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xff6f2d", @"value":@(14), @"left":@(14), @"right":@(7), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xff5722", @"value":@(15), @"right":@(8), @"y":@(0), @"x":@(0)}];
             
             [self initColorPL:@{@"name":@"0xff8838", @"value":@(16), @"left":@(11), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xfea043", @"value":@(17), @"left":@(12), @"right":@(15), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xfeb84e", @"value":@(18), @"left":@(18), @"right":@(16), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xfea043", @"value":@(19), @"left":@(19), @"right":@(12), @"y":@(0), @"x":@(0)}];
             [self initColorPL:@{@"name":@"0xff8838", @"value":@(20), @"right":@(13), @"y":@(0), @"x":@(0)}];
    
    
    /*imageview = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - 100 ) / 2, 200, 100, 100)];
    imageview.image = image;
    [self.view addSubview:imageview];*/
    
    
    imageview_2 = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - 100 ) / 2, 200, 100, 100)];
    imageview_2.image = [self convertToGrayscale:image];
    [self.view addSubview:imageview_2];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - 100 ) / 2, 450, 100, 30)];
    [btn setTitle:@"开始" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    for (int i = 0;  i < _arr.count; i++) {
        NSMutableDictionary *dict = _arr[i];
        UIImageView *Imageview = [[UIImageView alloc] initWithFrame:imageview_2.frame];
        
        UIImage *imageItem = [self convertToOldscale:image paravalue:[dict[@"value"] intValue] paray:[dict[@"y"] intValue]];
        Imageview.image = imageItem;
        Imageview.alpha = 0;
        
        [self.view addSubview:Imageview];
        [dict setObject:Imageview forKey:@"imageView"];
    }
    
    /*NSMutableArray *d = [[NSMutableArray alloc] init];
    for (int i = 0; i < imgSize.width * imgSize.height ; i++) {
        if (plarr[i] == 0) {
            continue;
        }
        
        BOOL iscontinue=YES;
        for (int y=0; y < d.count; y++) {
            if ([d[y] intValue] == plarr[i]) {
                iscontinue = NO;
                break;
            }
        }
        
        if (iscontinue == NO) {
            continue;
        }
        NSLog(@"i=%d", plarr[i]);
        [d addObject:@(plarr[i])];
    }*/
}

- (void)initColorPL:(NSDictionary *)dic{
    
    NSMutableDictionary *mudic = [[NSMutableDictionary alloc] initWithDictionary:dic];
    [_arr addObject:mudic];
}

- (void)click{
    [self startAnimate:0];
}

- (void)startAnimate:(int)i{
    if (i >= _arr.count) {
        return;
    }
    
    NSMutableDictionary *dic = _arr[i];
    
    /*UIImage *image = [self convertToOldscale:Imageview.image paravalue:[dic[@"value"] intValue]];
    
    Imageview_2.alpha = 0;
    Imageview_2.image = image;
    Imageview_3.alpha = 0;
    [UIView animateWithDuration:1 animations:^{
        Imageview_2.alpha = 1;
        Imageview_3.alpha = 1;
     } completion:^(BOOL finished) {
         Imageview_2.alpha = 1;
         Imageview_3.alpha = 1;
         [self startAnimate:i+1];
     }];*/
    
   
    //__block typeof (UIImageView *) blockImageView =  imageview;
    [UIView animateWithDuration:0.2 animations:^{
        UIImageView *imageView =((NSMutableDictionary *)_arr[i])[@"imageView"];
        imageView.alpha = 1;
    } completion:^(BOOL finished) {
        
        UIImageView *imageView =((NSMutableDictionary *)_arr[i])[@"imageView"];
        UIImageView *prevImageView;
        imageView.alpha = 1;
        if (i-1 >= 0) {
            prevImageView =((NSMutableDictionary *)_arr[i-1])[@"imageView"];
            //NSLog(@"retaincount1 = %ld", CFGetRetainCount((__bridge CFTypeRef)(imageView)));
            [prevImageView removeFromSuperview];
            ((NSMutableDictionary *)_arr[i-1])[@"imageView"] = nil;
        }
        
        //NSLog(@"retaincount = %ld", CFGetRetainCount((__bridge CFTypeRef)(imageView)));
        //NSLog(@"retaincount2 = %@", [prevImageView description]);
        [self startAnimate:i+1];
    }];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)convertToOldscale:(UIImage*)source paravalue:(int)paravalue paray:(int)paray{
    CGSize size = source.size;
    int width = size.width;
    int height = size.height;
    // the pixels will be painted to this array
    uint32_t *pixels = (uint32_t*)malloc(width * height *sizeof(uint32_t));
    // clear the pixels so any transparency is preserved
    memset(pixels,0, width * height *sizeof(uint32_t));
    //颜色空间DeviceRGB
    CGColorSpaceRef colorSpace =CGColorSpaceCreateDeviceRGB();
    // create a context with RGBA pixels
    CGContextRef context =CGBitmapContextCreate(pixels, width, height,8, width *sizeof(uint32_t), colorSpace,kCGBitmapByteOrder32Little|kCGImageAlphaPremultipliedLast);
    // paint the bitmap to our context which will fill in the pixels array
    CGContextDrawImage(context,CGRectMake(0,0, width, height), source.CGImage);
    
    
    for(int y =height - 1; y >= 0; y--) {
        for(int x =width-1; x >= 0; x--) {
            
            uint8_t *rgbaPixel = (uint8_t*) &pixels[y * width + x];
            
            
            int value  = plarr[y * width + x];
            if (value > paravalue ) {
                rgbaPixel[ALPHA] = 0;
                rgbaPixel[RED] = 0;
                rgbaPixel[GREEN] = 0;
                rgbaPixel[BLUE] = 0;
            }
            
        }
    }
    // create a new CGImageRef from our context with the modified pixels
    CGImageRef image =CGBitmapContextCreateImage(context);
    // we're done with the context, color space, and pixels
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    free(pixels);
    // make a new UIImage to return
    UIImage *resultUIImage = [UIImage imageWithCGImage:image];
    // we're done with image now too
    CGImageRelease(image);
    return resultUIImage;
}


- (UIImage *)convertToGrayscale:(UIImage*)source {
    CGSize size = source.size;
    int width = size.width;
    int height = size.height;
    // the pixels will be painted to this array
    uint32_t *pixels = (uint32_t*)malloc(width * height *sizeof(uint32_t));
    // clear the pixels so any transparency is preserved
    memset(pixels,0, width * height *sizeof(uint32_t));
    //颜色空间DeviceRGB
    CGColorSpaceRef colorSpace =CGColorSpaceCreateDeviceRGB();
    // create a context with RGBA pixels
    CGContextRef context =CGBitmapContextCreate(pixels, width, height,8, width *sizeof(uint32_t), colorSpace,kCGBitmapByteOrder32Little|kCGImageAlphaPremultipliedLast);
    // paint the bitmap to our context which will fill in the pixels array
    CGContextDrawImage(context,CGRectMake(0,0, width, height), source.CGImage);
    for(int y = height-1; y >= 0; y--) {
        for(int x =width-1; x >= 0; x--) {
        
            
        
            uint8_t *rgbaPixel = (uint8_t*) &pixels[y * width + x];
            uint32_t gray =0.3* rgbaPixel[RED] +0.59* rgbaPixel[GREEN] +0.11* rgbaPixel[BLUE];
            if (gray == 0) {
                continue;
            }
            
            
            //NSLog(@" r= %d, g=%d, b=%d", rgbaPixel[RED], rgbaPixel[GREEN], rgbaPixel[BLUE]);
            for (int z=0; z < _arr.count; z++) {
                NSMutableDictionary *dic = _arr[z];
                
                UInt32 hex = [ViewController uint32WithHexString:dic[@"name"]];
                int r = (hex >> 16) & 0xFF;
                int g = (hex >> 8) & 0xFF;
                int b = (hex) & 0xFF;
                
                
                if ((rgbaPixel[RED] == r &&  rgbaPixel[GREEN] == g && rgbaPixel[BLUE] == b)) {
                    if (plarr[y * width + x] > 0) {
                        continue;
                    }else{
                        int left = !dic[@"left"] ? -1 : [dic[@"left"] intValue];
                        int right = !dic[@"right"] ? -1: [dic[@"right"] intValue];
                        
                        
                        if (left > -1) {
                            NSMutableDictionary *leftdic = _arr[left];
                            int left_x = [leftdic[@"x"] intValue];
                            
                            if(!(left_x > 0 && x > left_x)){
                                continue;
                            }
                        }
                        
                        if (right > -1) {
                            NSMutableDictionary *leftdic = _arr[right];
                            int right_x = [leftdic[@"x"] intValue];
                            
                            if(!(right_x > 0 && x < right_x)){
                                continue;
                            }
                        }
                        
                        
                        plarr[y * width + x] = [dic[@"value"] intValue];
                        
                        if([dic[@"y"] intValue] < y){
                            [dic setObject:@(x) forKey:@"x"];
                            [dic setObject:@(y) forKey:@"y"];
                            
                        }
                        
                    }
                    
                }
            }
            
            //NSLog(@"color = %d, oldcolor r= %d, g=%d, b=%d", color, rgbaPixel[RED], rgbaPixel[GREEN], rgbaPixel[BLUE]);
            
            //if (!(rgbaPixel[RED] == 215 &&  rgbaPixel[GREEN] == 61 && rgbaPixel[BLUE] == 39)) {
            //if (!(rgbaPixel[RED] == r &&  rgbaPixel[GREEN] == g && rgbaPixel[BLUE] == b)) {
                // convert to grayscale using recommended method:http://en.wikipedia.org/wiki/Grayscale#Converting_color_to_grayscale
            
                
                
                // set the pixels to gray
                rgbaPixel[RED] = gray;
                rgbaPixel[GREEN] = gray;
                rgbaPixel[BLUE] = gray;
            //}else{
            
            //    NSLog(@"x=%d, y=%d", x, y);
            //}
            
            
            
            
        }
    }
    
    for(int y = height-1; y >= 0; y--) {
        for(int x =width-1; x >= 0; x--) {
            if (plarr[y * width + x] == 0) {
                
                 if(x+1 < width && plarr[y * width + x] == 0  ){
                     plarr[y * width + x] =  plarr[(y) * width + (x+1)];
                 }
                 
                 
                 if(x+1 < width && y+1 < height && plarr[y * width + x] == 0  ){
                     plarr[y * width + x] =  plarr[(y+1) * width + (x+1)];
                 }
                 
                 
                 
                 if(y+1 < height && plarr[y * width + x] == 0  ){
                     plarr[y * width + x] =  plarr[(y+1) * width + x];
                 }
            }
                
                
        }
    }
    // create a new CGImageRef from our context with the modified pixels
    CGImageRef image =CGBitmapContextCreateImage(context);
    // we're done with the context, color space, and pixels
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    free(pixels);
    // make a new UIImage to return
    UIImage *resultUIImage = [UIImage imageWithCGImage:image];
    // we're done with image now too
    CGImageRelease(image);
    return resultUIImage;
}

/*
- (UIImage *)convertToGrayscale:(UIImage*)source {
    CGSize size = source.size;
    int width = size.width;
    int height = size.height;
    // the pixels will be painted to this array
    uint32_t *pixels = (uint32_t*)malloc(width * height *sizeof(uint32_t));
    // clear the pixels so any transparency is preserved
    memset(pixels,0, width * height *sizeof(uint32_t));
    //颜色空间DeviceRGB
    CGColorSpaceRef colorSpace =CGColorSpaceCreateDeviceRGB();
    // create a context with RGBA pixels
    CGContextRef context =CGBitmapContextCreate(pixels, width, height,8, width *sizeof(uint32_t), colorSpace,kCGBitmapByteOrder32Little|kCGImageAlphaPremultipliedLast);
    // paint the bitmap to our context which will fill in the pixels array
    CGContextDrawImage(context,CGRectMake(0,0, width, height), source.CGImage);
    for(int y =0; y < height; y++) {
        for(int x =0; x < width; x++) {
            uint8_t *rgbaPixel = (uint8_t*) &pixels[y * width + x];
            // convert to grayscale using recommended method:http://en.wikipedia.org/wiki/Grayscale#Converting_color_to_grayscale
            uint32_t gray =0.3* rgbaPixel[RED] +0.59* rgbaPixel[GREEN] +0.11* rgbaPixel[BLUE];
            // set the pixels to gray
            rgbaPixel[RED] = gray;
            rgbaPixel[GREEN] = gray;
            rgbaPixel[BLUE] = gray;
        }
    }
    // create a new CGImageRef from our context with the modified pixels
    CGImageRef image =CGBitmapContextCreateImage(context);
    // we're done with the context, color space, and pixels
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    free(pixels);
    // make a new UIImage to return
    UIImage *resultUIImage = [UIImage imageWithCGImage:image];
    // we're done with image now too
    CGImageRelease(image);
    return resultUIImage;
}*/

@end
