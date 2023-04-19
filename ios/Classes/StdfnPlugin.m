#import "StdfnPlugin.h"
#if __has_include(<stdfn/stdfn-Swift.h>)
#import <stdfn/stdfn-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "stdfn-Swift.h"
#endif

@implementation StdfnPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStdfnPlugin registerWithRegistrar:registrar];
}
@end
