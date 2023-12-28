#!/bin/sh

nginx -v && nginx -V && exec nginx -g 'daemon off;'