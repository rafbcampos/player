package com.intuit.player.jvm.core.plugins

import com.intuit.player.jvm.core.bridge.runtime.Runtime

/** [Plugin] that enables additional configuration of a [Runtime] */
public interface RuntimePlugin : Plugin {

    /** Invoked with the [Runtime] instance to configure */
    // TODO: Should be suspend?
    public fun apply(runtime: Runtime<*>)
}
