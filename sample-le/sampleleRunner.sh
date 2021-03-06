#!/usr/bin/env bash

. ./readconfig

classpath=$samc_dir/bin
lib=$samc_dir/lib
for jar in `ls $lib/*.jar`; do
  classpath=$classpath:$jar
done

export CLASSPATH=$CLASSPATH:$classpath

java -cp $CLASSPATH -Dlog4j.configuration=mc_log.properties -Delectiontest.dir=/Users/wangsnowyin/Documents/zookeeper-3.5.1-alpha/sample-le edu.uchicago.cs.ucare.samc.server.LeaderElectionRunner ./target-sys.conf

