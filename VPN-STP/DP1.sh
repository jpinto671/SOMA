#!/bin/sh
/usr/bin/curl -k -u jpinto:M3x1c0671 -d @/home/jpinto/SOMA/requestTestTcpConnection.xml https://129.170.140.171:5550/service/mgmt/2004
/usr/bin/curl -k -u jpinto:M3x1c0671 -d @/home/jpinto/SOMA/requestExecSTPProd.xml https://129.170.140.171:5550/service/mgmt/2004

