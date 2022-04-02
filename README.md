# unit-bind-aaiu
# DO NOT USE FOR PRODUCTION PURPOSES

This repository was created solely to demonstrate existing problems 
and THE CODE IN IT SHOULD NOT BE USED FOR PRODUCTION PURPOSES:
- https://github.com/nginx/unit/issues/669

The container assembly code is taken from the **original repository**:
https://github.com/nginx/unit/blob/master/pkg/docker/Dockerfile.minimal
___
**Changes and final goal:**

The assembly commands are supplemented with the necessary commands 
to demonstrate the problem and find its subsequent solution.
___
# Getting started
To run a project with **Docker installed** on the computer: 
- run the following command in the working folder of the project: `./test.sh`;
- view the current `STDOUT` of the `aaiu-test` container in the local Docker repository.
___
**Docker "aaiu-test" containter STDOUT**:
```
unit: [debug] sys_nerr: 132

unit: [debug] malloc(6820): 5589A11E06B0

unit: [debug] stderr flags: 0x0001

unit: [debug] ncpu: 8

unit: [debug] pagesize: 4096

unit: [debug] malloc(40): 5589A11E2160

unit: [debug] malloc(203): 5589A11E2190

unit: [debug] malloc(56): 5589A11E2270

2022/04/02 08:43:21.535 [debug] 8#8 realloc(0, 32): 5589A11E2360

2022/04/02 08:43:21.535 [debug] 8#8 malloc(24): 5589A11E25B0

2022/04/02 08:43:21.535 [debug] 8#8 malloc(168): 5589A11E22B0

2022/04/02 08:43:21.535 [debug] 8#8 posix_memalign(16, 544): 5589A11E25D0

2022/04/02 08:43:21.535 [debug] 8#8 pthread_mutex_init(5589A11E2648)

2022/04/02 08:43:21.535 [debug] 8#8 posix_memalign(16, 832): 5589A11E2800

2022/04/02 08:43:21.535 [debug] 8#8 malloc(136): 5589A11E2B50

2022/04/02 08:43:21.535 [debug] 8#8 posix_memalign(128, 1024): 5589A11E2C00

2022/04/02 08:43:21.535 [debug] 8#8 malloc(1368): 5589A11E35C0

2022/04/02 08:43:21.535 [debug] 8#8 create engine 5589A11E35C0

2022/04/02 08:43:21.535 [debug] 8#8 malloc(16368): 5589A11E3B20

2022/04/02 08:43:21.535 [debug] 8#8 malloc(16368): 5589A11E7B20

2022/04/02 08:43:21.535 [debug] 8#8 malloc(160): 5589A11E30A0

2022/04/02 08:43:21.535 [debug] 8#8 malloc(2048): 5589A11EBB20

2022/04/02 08:43:21.535 [debug] 8#8 malloc(384): 5589A11E3150

2022/04/02 08:43:21.535 [debug] 8#8 epoll_create(): 3

2022/04/02 08:43:21.535 [debug] 8#8 signalfd(): 4

2022/04/02 08:43:21.535 [debug] 8#8 eventfd(): 5

2022/04/02 08:43:21.535 [debug] 8#8 malloc(2048): 5589A11EC330

2022/04/02 08:43:21.535 [debug] 8#8 malloc(168): 5589A11E32E0

2022/04/02 08:43:21.535 [debug] 8#8 malloc(136): 5589A11E3010

2022/04/02 08:43:21.535 [debug] 8#8 posix_memalign(128, 1024): 5589A11ECB80

2022/04/02 08:43:21.535 [debug] 8#8 malloc(232): 5589A11E3390

2022/04/02 08:43:21.535 [debug] 8#8 about to get "unit" groups (uid:101, base gid:101)

2022/04/02 08:43:21.535 [debug] 8#8 user "unit" has gids:101

2022/04/02 08:43:21.535 [debug] 8#8 socket(): 6

2022/04/02 08:43:21.535 [debug] 8#8 setsockopt(6, 1, SO_REUSEADDR): 1

2022/04/02 08:43:21.535 [debug] 8#8 bind(6, unix:/var/run/control.unit.sock.tmp)

2022/04/02 08:43:21.535 [debug] 8#8 listen(6, 511)

2022/04/02 08:43:21.535 [debug] 8#8 socket(): 7

2022/04/02 08:43:21.535 [debug] 8#8 socket close(7)

2022/04/02 08:43:21.535 [debug] 8#8 rename("/var/run/control.unit.sock.tmp", "/var/run/control.unit.sock")

2022/04/02 08:43:21.535 [debug] 8#8 mmap(0, 4, 3, 21, -1, 0): 7F8C9CB32000

2022/04/02 08:43:21.535 [debug] 8#8 posix_memalign(128, 128): 5589A11EE900

2022/04/02 08:43:21.535 [debug] 8#8 posix_memalign(64, 24): 5589A11EE340

2022/04/02 08:43:21.535 [info] 8#8 unit 1.26.1 started

2022/04/02 08:43:21.535 [debug] 8#8 work queue: fast

2022/04/02 08:43:21.535 [debug] 8#8 rt conf done

2022/04/02 08:43:21.535 [debug] 8#8 open("/var/log/unit.log", 0xC41, 0x180): 7 err:0

2022/04/02 08:43:21.535 [debug] 8#8 dup2(7, 2, "/var/log/unit.log")

unit: [debug] sys_nerr: 132

unit: [debug] malloc(6820): 55687E8406B0

unit: [debug] stderr flags: 0x0401

unit: [debug] ncpu: 8

unit: [debug] pagesize: 4096

unit: [debug] malloc(40): 55687E842160

unit: [debug] malloc(203): 55687E842190

unit: [debug] malloc(56): 55687E842270

2022/04/02 08:43:23.543 [debug] 23#23 realloc(0, 32): 55687E842360

2022/04/02 08:43:23.543 [debug] 23#23 malloc(24): 55687E8425B0

2022/04/02 08:43:23.543 [debug] 23#23 malloc(168): 55687E8422B0

2022/04/02 08:43:23.543 [debug] 23#23 posix_memalign(16, 544): 55687E8425D0

2022/04/02 08:43:23.543 [debug] 23#23 pthread_mutex_init(55687E842648)

2022/04/02 08:43:23.543 [debug] 23#23 posix_memalign(16, 832): 55687E842800

2022/04/02 08:43:23.543 [debug] 23#23 malloc(136): 55687E842B50

2022/04/02 08:43:23.543 [debug] 23#23 posix_memalign(128, 1024): 55687E842C00

2022/04/02 08:43:23.543 [debug] 23#23 malloc(1368): 55687E8435C0

2022/04/02 08:43:23.543 [debug] 23#23 create engine 55687E8435C0

2022/04/02 08:43:23.543 [debug] 23#23 malloc(16368): 55687E843B20

2022/04/02 08:43:23.543 [debug] 23#23 malloc(16368): 55687E847B20

2022/04/02 08:43:23.543 [debug] 23#23 malloc(160): 55687E8430A0

2022/04/02 08:43:23.543 [debug] 23#23 malloc(2048): 55687E84BB20

2022/04/02 08:43:23.543 [debug] 23#23 malloc(384): 55687E843150

2022/04/02 08:43:23.543 [debug] 23#23 epoll_create(): 3

2022/04/02 08:43:23.543 [debug] 23#23 signalfd(): 4

2022/04/02 08:43:23.543 [debug] 23#23 eventfd(): 5

2022/04/02 08:43:23.543 [debug] 23#23 malloc(2048): 55687E84C330

2022/04/02 08:43:23.543 [debug] 23#23 malloc(168): 55687E8432E0

2022/04/02 08:43:23.543 [debug] 23#23 malloc(136): 55687E843010

2022/04/02 08:43:23.543 [debug] 23#23 posix_memalign(128, 1024): 55687E84CB80

2022/04/02 08:43:23.543 [debug] 23#23 malloc(232): 55687E843390

2022/04/02 08:43:23.543 [debug] 23#23 about to get "unit" groups (uid:101, base gid:101)

2022/04/02 08:43:23.543 [debug] 23#23 user "unit" has gids:101

2022/04/02 08:43:23.543 [debug] 23#23 socket(): 6

2022/04/02 08:43:23.543 [debug] 23#23 setsockopt(6, 1, SO_REUSEADDR): 1

2022/04/02 08:43:23.543 [debug] 23#23 bind(6, unix:/var/run/control.unit.sock.tmp)

2022/04/02 08:43:23.543 [debug] 23#23 listen(6, 511)

2022/04/02 08:43:23.543 [debug] 23#23 socket(): 7

2022/04/02 08:43:23.543 [debug] 23#23 socket close(7)

2022/04/02 08:43:23.543 [debug] 23#23 rename("/var/run/control.unit.sock.tmp", "/var/run/control.unit.sock")

2022/04/02 08:43:23.543 [debug] 23#23 mmap(0, 4, 3, 21, -1, 0): 7F85DBDB9000

2022/04/02 08:43:23.543 [debug] 23#23 posix_memalign(128, 128): 55687E84E900

2022/04/02 08:43:23.543 [debug] 23#23 posix_memalign(64, 24): 55687E84E340

2022/04/02 08:43:23.543 [info] 23#23 unit 1.26.1 started

2022/04/02 08:43:23.543 [debug] 23#23 work queue: fast

2022/04/02 08:43:23.543 [debug] 23#23 rt conf done

2022/04/02 08:43:23.543 [debug] 23#23 open("/var/log/unit.log", 0xC41, 0x180): 7 err:0

2022/04/02 08:43:23.543 [debug] 23#23 dup2(7, 2, "/var/log/unit.log")



Execution log:

2022/04/02 08:43:21.535 [debug] 8#8 setproctitle: "unit: main v1.26.1 [unitd-debug --no-daemon --control unix:/var/run/control.unit.sock]"

2022/04/02 08:43:21.539 [debug] 12#12 conf_data_handler(120): {"listeners":{"unix:///var/run/aaiu.sock":{"pass":"routes"}},"routes":[{"match":{"source":[]},"action":{"return":200}}]}

2022/04/02 08:43:21.539 [debug] 12#12 router listener: "unix:///var/run/aaiu.sock"

2022/04/02 08:43:21.539 [debug] 8#8 listening socket "unix:///var/run/aaiu.sock"

2022/04/02 08:43:21.539 [debug] 8#8 socket("unix:///var/run/aaiu.sock"): 10

2022/04/02 08:43:23.543 [debug] 23#23 setproctitle: "unit: main v1.26.1 [unitd-debug --no-daemon --control unix:/var/run/control.unit.sock]"

2022/04/02 08:43:23.547 [debug] 27#27 conf_data_handler(120): {"listeners":{"unix:///var/run/aaiu.sock":{"pass":"routes"}},"routes":[{"match":{"source":[]},"action":{"return":200}}]}

2022/04/02 08:43:23.547 [debug] 27#27 router listener: "unix:///var/run/aaiu.sock"

2022/04/02 08:43:23.548 [debug] 23#23 listening socket "unix:///var/run/aaiu.sock"

2022/04/02 08:43:23.548 [alert] 23#23 bind(\"unix:///var/run/aaiu.sock\") failed (98: Address already in use)
```
