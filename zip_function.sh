#!/bin/sh
mkdir /tmp/work
cd /tmp/work
cp /opt/work/function.rb .
mrbc function.rb
zip /opt/work/function.zip function.mrb
