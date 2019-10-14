#!/bin/bash
PATH=/usr/sbin:/sbin:/usr/bin:/bin



PUB_PORT="1738"
COMP_PORT="1739"
ANYBARPUB="nc -4u -w0 localhost ${PUB_PORT}"
ANYBARCOMP="nc -4u -w0 localhost ${COMP_PORT}"

CORPNTP=$(cat ~/.corpntp)


if lsof -Pn -i4 | grep -q ${PUB_PORT}; then
  :
else
  ANYBAR_PORT=${PUB_PORT} open -na AnyBar
fi

if lsof -Pn -i4 | grep ${COMP_PORT} &> /dev/null; then
  :
else
  ANYBAR_PORT=${COMP_PORT} open -na AnyBar
fi

if ping -c 2 -t 2 -o 1.1.1.1 &> /dev/null; then
  echo -n green | $ANYBARPUB
else
  echo -n red | $ANYBARPUB
fi
if ping -c 2 -t 2 -o ${CORPNTP} &> /dev/null; then
  echo -n orange | $ANYBARCOMP
else
  echo -n black | $ANYBARCOMP
fi
