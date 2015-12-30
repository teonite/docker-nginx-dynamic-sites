#!/bin/bash
#
# Copyright (C) TEONITE
# Copyright (C) Robert Olejnik <robert@teonite.com>
# 

/etc/init.d/nginx start
exec tail -f /var/log/nginx/*