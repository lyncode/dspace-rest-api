DSpace REST API
===============

(for DSpace 3.0)



Automatic Installation
======================

The DSpace REST API could be installed as an add-on. If using an Unix OS, there
is a script that would do the work for you:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ cd [dspace-rest-api directory]
$ ./install.sh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



Manual Installation
===================

In order to setup it manually, please, use the following steps:

1 - Compile the dspace-rest-api/dspace-rest module (mvn package)
2 - Copy the generated target directory (target/dspace-rest-3.0) to the DSpace
web apps directory (modify it's name from dspace-rest-3.0 to rest).
3 - Change the file WEB-INF/web.xml, replace \${dspace.dir} by the correct value
(where dspace is installed).



Starting REST API
========================

The changes only takes effect after the new web app is completely loaded. So, if
the web app container (ie.: Tomcat) automatically starts the web app it wouldn't
require to restart it, otherwise, you must restart the web app container.


API Documentation
========================

After starting the REST API, visit the base url: http://<yourdomain>/rest, it will show the API documentation.
