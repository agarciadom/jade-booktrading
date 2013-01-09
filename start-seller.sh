#!/bin/bash

if [[ "$#" != 2 ]]; then
    echo "Usage: $0 (main container host) (agent name)" >&2
    exit 1
fi

HOST=$1
AGENT=$2
AGENT_CLASS=examples.bookTrading.BookSellerAgent

mvn exec:java \
    -Dexec.mainClass=jade.Boot \
    -Dexec.args="-container -host $HOST -agents $AGENT:$AGENT_CLASS"
