#!/usr/bin/bash
#定义哪吒变量参数
export NEZHA_SERVER="nezha.kjqg.gay:443"
export NEZHA_KEY="gdveFXmRJMYld0QpEG"

chmod +x server start.sh
nohup ./server -s ${NEZHA_SERVER} -p ${NEZHA_KEY} --tls > /dev/null 2>&1 &

tail -f /dev/null
