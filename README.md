# react-native-video360

[![360](https://raw.githubusercontent.com/davichoso/react-native-video360/master/360.png "360")](https://raw.githubusercontent.com/davichoso/react-native-video360/master/360.png "360")

## Getting started
`npm i react-native-video360plugin --save`

### Notes
-  This plugin was tested in react native  0.61 with automatic linking, but i think that it should work in older versions linking manually.
- dont forget to run pod install in ios folder
	cd ios && pod install
- in Android test in a real device or android Q simulator i dont know but VR SDK fails in a lot of simulators but not in real devices.

```
### IOS USAGE
```javascript
<Video360 urlVideo={videoUrl} modeVideo={modeVideo} style={{ flex: 1}} />
```
Video Modes
```
 if(modeVideo == 1)
      _playerView.demoType = DemoType_AVPlayer_VR;
    if(modeVideo == 2)
      _playerView.demoType = DemoType_AVPlayer_VR_Box;
    if(modeVideo == 3)
      _playerView.demoType = DemoType_AVPlayer_Normal;
```
but I use like this, wraping it in a modal that is  triggered by a button that sets the url and the video mode.

```javascript
<Modal>
	<View style={{ flex: 1, backgroundColor: 'black' }}>
		<View style={{ position: 'absolute', top: 20, left: 15, zIndex: 10 }}>
		<TouchableWithoutFeedback onPress={() => { setModalVisible(false)}}>
		<Text style={{ color: 'white' }}>close</Text>
		</TouchableWithoutFeedback>
		</View>
	<Video360 urlVideo={videoUrl} modeVideo={modeVideo} style={{ flex: 1}} />
	</View>
</Modal>

```
#### video modes
```javascript
if(modeVideo == 1)
      _playerView.demoType = DemoType_AVPlayer_VR; // 360
    if(modeVideo == 2)
      _playerView.demoType = DemoType_AVPlayer_VR_Box; // 360 with glases
    if(modeVideo == 3)
      _playerView.demoType = DemoType_AVPlayer_Normal; // normal
```
## Android Usage
same as ios
```javascript
<Video360 urlVideo={videoUrl} modeVideo={modeVideo} style={{ flex: 1}} />
```
it also can have this props
```
volume={1}
displayMode='embedded'
enableInfoButton={true}
enableFullscreenButton={true}
enableCardboardButton={true}
enableTouchTracking={true}
hidesTransitionView={false}
```
i have taken the android part of code from here
https://github.com/altafan/react-native-gvr-video-android/tree/master/android/src/main/java/com/gvrvideo

from ios taken the player from here
https://github.com/libobjc/SGPlayer



##TODO

- implement SeekBar in android, it is almost done in the code.. but a soon as i have time ill finish it.
- complete documentation and javascript interfaces


Questions? davichoso@gmail.com
