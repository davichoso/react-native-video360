
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DemoType) {
    DemoType_AVPlayer_Normal = 0,
    DemoType_AVPlayer_VR,
    DemoType_AVPlayer_VR_Box,
    DemoType_FFmpeg_Normal,
    DemoType_FFmpeg_Normal_Hardware,
    DemoType_FFmpeg_VR,
    DemoType_FFmpeg_VR_Hardware,
    DemoType_FFmpeg_VR_Box,
    DemoType_FFmpeg_VR_Box_Hardware,
};

@interface PlayerViewController : UIViewController

@property (nonatomic) DemoType demoType;
@property (nonatomic) NSString* urlVideo;

@end
