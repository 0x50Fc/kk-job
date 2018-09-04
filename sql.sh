#!/bin/bash

KK_FLAGS=
TO_VER=v1.0
PREFIX=job_

if [ ! -d "sql" ]; then
    mkdir sql
fi


echo "" > sql/$PREFIX$TO_VER.sql

build() {

    kk-cli sql --prefix ${PREFIX} --name job --autoIncrement 1 $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
    kk-cli sql --prefix ${PREFIX} --name slave --autoIncrement 1 $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
    kk-cli sql --prefix ${PREFIX} --name job_queue --autoIncrement 1 $KK_FLAGS >> sql/$PREFIX$TO_VER.sql

    COUNT=$1

    for I in `seq 1 $COUNT`
    do
        PIX=${PREFIX}${I}_
        kk-cli sql --prefix ${PIX} --name job_item --autoIncrement 1 $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
        kk-cli sql --prefix ${PIX} --name job_log --autoIncrement 1 $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
    done

    kk-cli sql --ver sql/$PREFIX$TO_VER.json > /dev/null
}

build 128