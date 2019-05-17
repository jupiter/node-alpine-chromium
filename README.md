# node-alpine-chromium

For running browser tests using [Chromium](https://www.chromium.org/Home).

This works with [TestCafé](https://devexpress.github.io/testcafe/) in [headless mode](https://devexpress.github.io/testcafe/documentation/using-testcafe/common-concepts/browsers/testing-in-headless-mode.html), with browser set to `"chromium:headless"`.

Note that it won't run as 'root', which means any files written to mounted volumes will need to have lax permissions, e.g.

```
$ touch thefiletobewritten.xml
$ chmod a+rw thefiletobewritten.xml
```
