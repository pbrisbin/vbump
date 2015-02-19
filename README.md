# vbump

Accept a list of conventionally formatted versions on `stdin` and an argument
specifying which component to bump (default, *patch*). Find the highest current
version, bump the specified component, and output that as a conventionally
formatted version.

## Usage

```
% git tag
v0.1.0.pre
v0.2.0
v0.1.1.rc
v1.5.0
v0.0.1

% git tag | sort -rV
v1.5.0

% git tag | vbump
v1.5.1

% git tag | vbump patch
v1.5.1

% git tag | vbump minor
v1.6.0

% git tag | vbump major
v2.0.0
```

## Installation

*TODO*
