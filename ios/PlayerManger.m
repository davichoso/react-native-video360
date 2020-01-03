//  Created by davichoso@gmail.com

#import "PlayerManager.h"
#import "Video360.h"


@implementation Video360Manager

RCT_EXPORT_MODULE(Video360)


 
- (UIView *)view
{
 
  return [Video360 new] ;
}

RCT_EXPORT_VIEW_PROPERTY(modeVideo, int)
RCT_EXPORT_VIEW_PROPERTY(urlVideo, NSString)


@end
