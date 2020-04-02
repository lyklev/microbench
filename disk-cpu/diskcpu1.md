# Disk-CPU-1

This benchmark tests both disk I/O and a bit of CPU and memory, by

1) creating a file of about 35 megabytes filled with deterministic noise
2) timing the sorting of that file using the unix command "sort"

Some benchmark results:


| System                                  | Time [s]
|-----------------------------------------|----------
| MacBook Pro 2018, Core i5, 3.1 GHz, SSD |     4.00
| Raspberry PI 4, 4 GB memory, SD card    |    34.60 



