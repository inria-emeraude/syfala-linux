#! /usr/bin/env bash

make clean
make dts XSA_FILE=$1
make include_dtsi DTSI_FILE=zynq-zybo-full.dtsi
make compile
