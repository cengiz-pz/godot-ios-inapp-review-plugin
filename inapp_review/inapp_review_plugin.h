//
// © 2024-present https://github.com/cengiz-pz
//
#pragma once

#include "core/object/object.h"
#include "core/object/class_db.h"

extern String const REVIEW_FLOW_LAUNCHED_SIGNAL;


class PluginClass : public Object {
	GDCLASS(InappReviewPlugin, Object);

	static void _bind_methods();

public:
	void launch_review_flow ();

	PluginClass();
	~PluginClass();
};
