#!/bin/bash

SCRIPT=$(dirname $0)
CERT="${SCRIPT}/../cert"
mosquitto_pub \
	--cafile ${CERT}/AmazonRootCA1.pem \
	--cert ${CERT}/1f91b47dbbb37d1edb3e0147c3bf7430d32d1255404d17dcc580420836aa3192-certificate.pem.crt \
	--key ${CERT}/1f91b47dbbb37d1edb3e0147c3bf7430d32d1255404d17dcc580420836aa3192-private.pem.key \
	-h a2vbbdorkkxq7n-ats.iot.ap-northeast-1.amazonaws.com \
	-p 8883 \
	-t test/hello \
	-m "hello from paul_testdevice"
