#include "include/deviceinfonative/deviceinfonative_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "deviceinfonative_plugin.h"

void DeviceinfonativePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  deviceinfonative::DeviceinfonativePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
