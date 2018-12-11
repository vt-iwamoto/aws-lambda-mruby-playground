#!/bin/sh
mkdir /tmp/work
cd /tmp/work

cp /opt/work/bootstrap .
cp /var/task/mruby-2.0.0/bin/mruby .
cp /opt/work/function_mruby.rb .
mrbc --remove-lv function_mruby.rb

zip /opt/work/function_mruby.zip bootstrap mruby function_mruby.mrb 
