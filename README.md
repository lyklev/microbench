# microbench

Imagine...

You are working on a remote system, having gone through multiple firewalls,
VPNs, stepstones, and... you *feel* that is sluggish... but you can't put your
finger on it. Logs say everything is fine. Specs say everything is fine. ``cat
/proc/whatever`` says everything is fine.  But something *feels* wrong. The
tools are minimal. Your compiler is barely working, if at all, and the system
lacks most libraries. You only have a few system tools. But a benchmark would
**really** help. If only to prove to your bosses that really, something is
wrong, and you need more time to find out what.

That is exactly the purpose of this set of tools. Intended to be small enough
to copy-and-paste into a terminal window; run with a minimum set of tools that
are usually available, like Perl and shell commands.

Each test is intended to specifically address one issue, if possible. The
scripts and sources are kept small, without comments, so that they can be
copied and pasted into a terminal window. The documentation is in a separte
file, with the same name, but in Markdown format.


## About tests in Perl

Perl is the Swiss chainsaw of scripting, and has many system-level functions
built in, so that you can run the tests without compiling - and therefore,
suitable for running on systems without a compiler. Most systems have a Perl
interpreter for historic reasons, so these tests should work pretty much
anywhere.

## Contributions

Contributions are welcome! Any programming language is fine, but keep in mind:

ideally:

* each test should run on its own, without any other files
* each test should run with whatever is available on the system - assume
  that you are a normal user and that you cannot install anything
* you should be able to copy and paste the file from a terminal window,
  so "view the raw version of each test, select-all, copy, paste in the terminal
  window" should work
* each test should run in a few seconds up to a few minutes on the slowest system

It is nice to have a simple description of what your test is actually doing,
what to expect, if it needs anything, and what to look out for. Do not put
any comments or descriptions in the source of the scripts, because this makes
the scripts too big!

. 


