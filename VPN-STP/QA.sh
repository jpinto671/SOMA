#!/bin/sh
/usr/bin/curl -k -u jpinto:M3x1c0671 -d @/home/jpinto/SOMA/requestTestTcpConnectionQa.xml https://129.170.139.81:5550/service/mgmt/2004
/usr/bin/curl -k -u jpinto:M3x1c0671 -d @/home/jpinto/SOMA/requestExecSTP.xml https://129.170.139.81:5550/service/mgmt/2004
