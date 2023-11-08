# GtBreakpointSearch

Some gtViews to quickly see code that has breakpoints in [Glamorous Toolkit](https://gtoolkit.com/).

# Installation

```Smalltalk
[ EpMonitor current
	disableDuring: [ Metacello new
			baseline: 'GtBreakpointSearch';
			repository: 'github://botwhytho/GtBreakpointSearch:main/src';
			load ] ] forkAt: 29 named: #GtBreakpointSearch
```

To depend on this package add this to your baseline:

```Smalltalk
spec baseline: 'GtBreakpointSearch' with: [spec repository: 'github://botwhytho/GtBreakpointSearch:main/src']
```

# Usage

The `AllBreakpoints` class has a view that shows all packages with breakpoints. Packages and classes also have views that show the methods with breakpoints (if any).
