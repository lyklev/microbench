# Disk-1

This benchmark tests random-access disk I/O.

It writes numbers in a random-access pattern to a 95M file. The
random-access pattern is created by taking the digits of sines, and
using those as a position to write data.

This test uses syswrite to bypass any stdio/libc buffering.

Run this as 

   time perl disk1.pl

Some benchmark results:

Times in [s]:

| System                                  |  Real |   User |   Sys 
|-----------------------------------------|-------|--------|--------
| MacBook Pro 2018, Core i5, 3.1 GHz, SSD |  15.0 |    3.8 |  10.6
| Raspberry PI 4, 4 GB memory, SD card    | 241.7 |   19.0 |  20.3
| Intel 4110 2.10GHz, SSD                 |   7.3 |    3.6 |   3.7


This benchmark was run on shared parallel file systems, but these are too slow to be used in practice; the performance
of shared parallel file systems is about 1000x slower than that of locally available file systems, so a separate (or light) version of this benchmark will be made for these tests.



