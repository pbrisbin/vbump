> [!NOTE]
> All of my GitHub repositories have been **archived** and will be migrated to
> Codeberg as I next work on them. This repository either now lives, or will
> live, at:
>
> https://codeberg.org/pbrisbin/vbump
>
> If you need to report an Issue or raise a PR, and this migration hasn't
> happened yet, send an email to me@pbrisbin.com.

# vbump

Accept a list of conventionally formatted versions on `stdin` and an argument
specifying which component to bump (default, *patch*). Find the highest current
version, bump the specified component, and output that as a conventionally
formatted version.

## Usage

```console
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

## Arch Installation

https://aur.archlinux.org/packages/vbump-git

## Manual Installation

To install to the default `PREFIX` of `/usr/local`:

(You may need `sudo`)

```console
make install
```

To install elsewhere:

```console
PREFIX=/some/path make install
```
