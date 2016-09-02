//
//  ZBBMobileSound.m
//  SettingMobileAudio
//
//  Created by Bingo on 16/9/2.
//  Copyright © 2016年 Bingo. All rights reserved.
//

#import "ZBBMobileSound.h"

@implementation ZBBMobileSound

/**
 *  系统震动
 */
-(id)initSystemShake {

    self = [super init];
    if (self) {
        sound = kSystemSoundID_Vibrate;//震动
    }
    return self;
}

/**
 *  初始化系统声音
 */
-(id)initSystemSoundWithName:(NSString *)soundName SoundType:(NSString *)soundType {
    self = [super init];
    if (self) {
        NSString * path = [NSString stringWithFormat:@"/System/Library/Audio/UISounds/%@.%@",soundName,soundType];
        if (path) {
            OSStatus error = AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:path], &sound);
            if (error != kAudioServicesNoError) {//获取声音出错
                NSLog(@"静音");
                sound = nil;
            }
        }
    }
    return self;
}

/**
 *  播放
 */
-(void)play {
    AudioServicesPlaySystemSound(sound);
}

@end
