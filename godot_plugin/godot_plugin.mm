//
// © 2024-present https://github.com/cengiz-pz
//
#import <Foundation/Foundation.h>

#import "godot_plugin.h"
#import "godot_plugin_class.h"
#import "core/config/engine.h"

PluginClass *plugin;

void InappReviewPlugin_init() {
	plugin = memnew(PluginClass);
	Engine::get_singleton()->add_singleton(Engine::Singleton("InappReviewPlugin", plugin));
}

void InappReviewPlugin_deinit() {
   if (plugin) {
	   memdelete(plugin);
   }
}
