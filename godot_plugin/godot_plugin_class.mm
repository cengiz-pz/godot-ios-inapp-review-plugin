//
// © 2024-present https://github.com/cengiz-pz
//
#import <Foundation/Foundation.h>

#include "core/config/project_settings.h"

#import "godot_plugin_class.h"
#import "godot_plugin-Swift.h"


String const REVIEW_FLOW_LAUNCHED_SIGNAL = "review_flow_launched";


/*
 * Bind plugin's public interface
 */
void PluginClass::_bind_methods() {
	ClassDB::bind_method(D_METHOD("launch_review_flow"), &PluginClass::launch_review_flow);
	ADD_SIGNAL(MethodInfo(REVIEW_FLOW_LAUNCHED_SIGNAL));
}

void PluginClass::launch_review_flow() {
	NSLog(@"InappReviewPlugin launch_review_flow");
	[SwiftClass launch_review_flow];

	emit_signal(REVIEW_FLOW_LAUNCHED_SIGNAL);
}

PluginClass::PluginClass() {
	NSLog(@"InappReviewPlugin constructor");
}

PluginClass::~PluginClass() {
	NSLog(@"InappReviewPlugin destructor");
}
