//
//  ZBBMobileSound.h
//  SettingMobileAudio
//
//  Created by Bingo on 16/9/2.
//  Copyright © 2016年 Bingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ZBBMobileSound : NSObject
{
    SystemSoundID sound;//系统声音的id, 取值范围:1000-2000
}
/**
 *  系统震动
 *
 */
-(id)initSystemShake;

/**
 *  初始化系统声音
 */
-(id)initSystemSoundWithName:(NSString *)soundName SoundType:(NSString *)soundType;

/**
 *  播放
 */
-(void)play;

@end
