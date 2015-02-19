It accepts a current version on stdin and bumps patch by default

  $ echo v0.0.1 | $TESTDIR/../bin/vbump
  v0.0.2

It errors on invalid argument component

  $ echo v0.0.1 | $TESTDIR/../bin/vbump foo
  error: invalid component: `foo'
  usage: vbump [major|minor|patch]
  [64]

It bumps the highest version in an unsorted list

  $ printf "%s\n" v0.1.0 v0.4.0 v0.3.0 | $TESTDIR/../bin/vbump
  v0.4.1

It can bump major, minor, or patch versions

  $ echo v0.0.1 | $TESTDIR/../bin/vbump patch
  > echo v0.1.1 | $TESTDIR/../bin/vbump minor
  > echo v1.1.1 | $TESTDIR/../bin/vbump major
  v0.0.2
  v0.2.0
  v2.0.0

It discards anything past patch-level

  $ echo v0.0.1.whatever | $TESTDIR/../bin/vbump
  v0.0.2

