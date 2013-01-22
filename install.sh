#!/bin/bash

if [ ! -d dspace-rest ]; then
	echo "Must execute this script from it's directory"
	exit
fi

read -e -p "DSpace installation directory (property: dspace.dir): " DIR

if [ ! -d $DIR ]; then
	echo "Directory $DIR does not exist"
	exit
fi

if [ ! -f $DIR/config/dspace.cfg ]; then
	echo "Wrong directory provided, it must contain the dspace configuration file which wasn't found $DIR/config/dspace.cfg"
	exit
fi

cd dspace-rest
#mvn package
cp -R target/dspace-rest-3.0 $DIR/webapps/rest
ESC=`echo $DIR | sed 's/\//\\\\\//g'`
cat $DIR/webapps/rest/WEB-INF/web.xml | sed 's/${dspace.dir}/'$ESC'/g' > $DIR/webapps/rest/WEB-INF/web.xml.new
mv $DIR/webapps/rest/WEB-INF/web.xml $DIR/webapps/rest/WEB-INF/web.xml.old
mv $DIR/webapps/rest/WEB-INF/web.xml.new $DIR/webapps/rest/WEB-INF/web.xml

echo "DSpace REST API installation succeded"


