#!/bin/sh
mkdir /tmp/work
cd /tmp/work
cp /opt/work/bootstrap .

mkdir bin
cp /opt/rubies/mruby-1.4.1/bin/mruby bin/

zip -r /opt/work/layer.zip .
