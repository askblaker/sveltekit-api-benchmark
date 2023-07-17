# Sveltekit API Routes vs Fastify Routes
## Sveltekit
```
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)


Server Software:        
Server Hostname:        localhost
Server Port:            4173

Document Path:          /api/test
Document Length:        12 bytes

Concurrency Level:      20
Time taken for tests:   11.018 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      3420000 bytes
Total body sent:        3080000
HTML transferred:       240000 bytes
Requests per second:    1815.27 [#/sec] (mean)
Time per request:       11.018 [ms] (mean)
Time per request:       0.551 [ms] (mean, across all concurrent requests)
Transfer rate:          303.14 [Kbytes/sec] received
                        273.00 kb/s sent
                        576.14 kb/s total

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.2      0       1
Processing:     1   11   2.6     11      33
Waiting:        1    8   2.4      8      28
Total:          2   11   2.7     11      33

Percentage of the requests served within a certain time (ms)
  50%     11
  66%     11
  75%     12
  80%     12
  90%     13
  95%     15
  98%     18
  99%     22
 100%     33 (longest request)
```
## Fastify
```
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)


Server Software:        
Server Hostname:        localhost
Server Port:            3000

Document Path:          /api/test
Document Length:        12 bytes

Concurrency Level:      20
Time taken for tests:   3.113 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      3080000 bytes
Total body sent:        3080000
HTML transferred:       240000 bytes
Requests per second:    6425.34 [#/sec] (mean)
Time per request:       3.113 [ms] (mean)
Time per request:       0.156 [ms] (mean, across all concurrent requests)
Transfer rate:          966.31 [Kbytes/sec] received
                        966.31 kb/s sent
                        1932.62 kb/s total

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       1
Processing:     1    3   1.3      2      18
Waiting:        1    2   1.0      2      16
Total:          2    3   1.3      3      18

Percentage of the requests served within a certain time (ms)
  50%      3
  66%      3
  75%      3
  80%      3
  90%      5
  95%      6
  98%      7
  99%      8
 100%     18 (longest request)
```
