#ifndef FLUTTER_PLUGIN_DEVICEINFONATIVE_PLUGIN_H_
#define FLUTTER_PLUGIN_DEVICEINFONATIVE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace deviceinfonative {

class DeviceinfonativePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DeviceinfonativePlugin();

  virtual ~DeviceinfonativePlugin();

  // Disallow copy and assign.
  DeviceinfonativePlugin(const DeviceinfonativePlugin&) = delete;
  DeviceinfonativePlugin& operator=(const DeviceinfonativePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace deviceinfonative

#endif  // FLUTTER_PLUGIN_DEVICEINFONATIVE_PLUGIN_H_
