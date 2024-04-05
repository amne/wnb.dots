#!/bin/bash

# minikube breaks binfmts on start since 1.32.x
echo -1 > /proc/sys/fs/binfmt_misc/WSLInterop
echo :WSLInterop:M::MZ::/init:P > /proc/sys/fs/binfmt_misc/register
