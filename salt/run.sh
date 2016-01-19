#!/bin/bash
echo "root" | passwd –stdin root
/etc/init.d/ssh start
/bin/bash
