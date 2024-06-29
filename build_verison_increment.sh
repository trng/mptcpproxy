#!/bin/bash
awk -i inplace -vFS=. -vOFS=. '/^#define build_version/{$3=($3+1)"\""}1' mptcproxy_version.h
