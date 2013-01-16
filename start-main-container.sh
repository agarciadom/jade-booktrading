#!/bin/sh

mvn compile exec:java -Dexec.mainClass=jade.Boot -Dexec.args='-gui'
