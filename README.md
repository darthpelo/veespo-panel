veespo-panel
============

An example of how to create a custom panel for the widget Veespo (iOS native version).

In this example I use [MSSimpleGauge](https://github.com/sabymike/MSSimpleGauge) project by [sabymike](https://github.com/sabymike). 

## Implementation

**Veespo Panel**:

use [VEDetailView](https://github.com/darthpelo/veespo-panel/blob/master/VEDetailView.m) class like base to create your custom panels.

**Gauges**:
- Colors customization of gauges in MSSimpleGauge.m line [138](https://github.com/darthpelo/veespo-panel/blob/master/Gauges/MSSimpleGauge.m#L138).
- Annotation customization of gauges in MSAnnotatedGauge.m line [27](https://github.com/darthpelo/veespo-panel/blob/master/Gauges/MSAnnotatedGauge.m#L27).

## Examples

# ![Screenshot](https://raw.github.com/darthpelo/veespo-panel/master/example.png)
