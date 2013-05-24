Doc ID:  Read_Upl.txt						   Date:  6/29/2012



			F E D E R A L   E L E C T I O N   C O M M I S S I O N
			=====================================================

				   Vendor Package Version 8.0.1.8
				   ==============================



			     The Disclose FECload JAVA Utility (v8.0.1.4)
			     ============================================


Contents of the FECload directory:
==================================

|ReadMe.txt       	{This 'Read_Upl.txt' file}
|
|FECload.jar      	JAVA GUI that uses the DiscloseClient.jar, enabling filers
|                 	to send or "UpLoad" their electronic filings to the FEC.
|
|FECLoad.bat		SAMPLE-Windows batch file to call FECLoad.jar.|
|
lib (Directory) 	DiscloseClient Command line Dependency Files
|
|------>|DiscloseClient.jar		Commandline JAVA file, enabling filers to
|	|				send or "Upload" their electronic filings to
|	|				the FEC.
|	|CryptoManager.jar     		Encryption Manager file to generate and use
|	|				the necessary encryption keys.
|	|httpcore-4.0.1.jar
|	|
|	|axiom-api-1.2.12.jar
|	|
|	|axiom-dom-1.2.12.jar
|	|
|	|axiom-impl-1.2.12.jar
|	|
|	|axis2-adb-1.6.1.jar
|	|
|	|axis2-adb-codegen-1.6.1.jar
|	|
|	|axis2-codegen-1.6.1.jar
|	|
|	|axis2-kernel-1.6.1.jar
|	|
|	|axis2-transport-http-1.6.1.jar
|	|
|	|axis2-transport-local-1.6.1.jar
|	|
|	|axis2-xmlbeans-1.6.1.jar
|	|
|	|commons-codec-1.3.jar
|	|
|	|commons-httpclient-3.1.jar
|	|
|	|commons-logging-1.1.1.jar
|	|
|	|mail-1.4.jar
|	|
|	|neethi-3.0.1.jar
|	|
|	|wsdl4j-1.6.2.jar
|	|
|	|XmlSchema-1.4.7.jar
|	|
|	|commons-io-2.0.1.jar
|	|
|	|commons-discovery-0.2.jar
|	|
|	|commons-logging.jar
|	|
|	|jaxrpc.jar
|	|
|	|log4j-1.2.16.jar
|	|
|	|log4j.properties
|	|
|	|wsdl4j.jar

lib (Directory)		FECLoad JAVA GUI Dependency Files 
|
|------>|ALL {DiscloseClient Command line Dependency Files}
|	|
|	|AbsoluteLayout.jar
|	|
|	|appframework-1.0.3.jar
|	|
|	|beansbinding-1.2.1.jar
|	|
|	|swing-layout-1.0.4.jar
|	|
|	|swing-worker-1.1.jar

====================================================================================

FECload.jar:
============

FECload enables you to submit electronic filings to the Federal Election 
Commission, provided that you have an FEC-provided Committee ID and password.  


Using FECload:
==============

(Please read 'Configuring FECload' below before using FECload.)

We have tried to make FECload as easy to use as possible. 

To submit an electronic filing to the FEC, launch FECLoad by Double Left Clicking
on the FECLoad.bat file. Complete the 'Filer Information'. In the 'Filing
Information' Left Click the 'Choose' button in order to browse for the filing to
upload. Then select the method by which you wish to upload the file.  

FECload provides 3 methods by which you can submit electronic filings:

1. TCP/IP	- Select this method if you have a TCP/IP connection to
		  the Internet. This protocal use PORT 667 to establish an
		  internet connection to the filing server. This connection
		  should be active at the time you run FECload.   

		  NOTE: If you can browse the Web and are not connected to a 
		  high security network, you should be able to use
		  the TCP/IP method to submit electronic filings.

2. SSL		- Select this method if for any reason (e.g. security,
		  firewalling), you cannot use your TCP/IP connection for
		  electronic filing. Or, your network is filtered/controlled
		  by a PROXY SERVER.

		  NOTE: The 'Proxy Server Details' section of the configuration
		  tab must be properly configured for successful upload.

4. Disk		- Select this method if you have neither a TCP/IP connection
		  to the Internet, nor a modem.  


Configuring FECload:
====================

Before using FECload you must provide either an email address or fax number to 
which it can acknowledge filings. 

Once you have provided an email address or fax number, you can go ahead and
upload electronic filings to the FEC!  

To provide FECload an email address or fax number, select the Upload Tab from 
the Settings window, and fill in the 'Filer Information'. You MUST provide either an 
email address or a fax number, or both if you wish.

NOTE: The FECLoad module can now accommodate two emails. A minimum of one email or a
fax number is required.  

Please consult your most current documentation for the 'Filing Server Details'

			****FILING SERVER DETAILS****
		TCP/IP Server RL/IP: disclose.nictusa.com
		  SSL Server URL/IP: webforms.nictusa.com
			  Agency ID: FEC
		 Test Server URL/IP: testing.nictusa.com
			  Disk File: [Path/filename when filing to Computer]

			****PROXY SERVER DETAILS****
		Proxy Server URL/IP: [URL or IP address of Proxy Server]
		      Proxy User ID: [Username used when launching Internet Browser]
			   Password: [Password used when launching Internet Browser]
			       Port: [Port used from user's machine to Proxy Server]


DiscloseClient.jar:
===================

DiscloseClient provides the command line functionality without the JAVA GUI.  
The parameters specified below may be used for this call or FECLoad
as well. 


Command Description
===================

FECLoad may be called programmatically or run from command line with or without the 
JAVA GUI. 

USAGE / SYNTAX
 
	(With GUI)
	java –jar FECLoad.jar [OPTION] [[DRIVE:][\path\]inputfilename[.FEC]]

	(Without GUI)
	java –jar DiscloseClient.jar [OPTION] [[DRIVE:][\path\]inputfilename[.FEC]]

DESCRIPTION

	Minimum JAVA requirement for FECLoad.jar is JAVA5 or higher and available
	at: http://www.java.com/en/download.

	Windows Developers
	FECLoad stores and uses the all data in the following registry path unless a 
	properties file is specified in the call by use of the '-properties'
	options: HKEY_CURRENT_USER\Software\JavaSoft\Prefs\com.nictusa.disclose\

	Note: All the properties (Fields) can be read from the above registry node
	unless provided through its independent option (see below).
	
	FECLoad exits with one of four status codes:
		
		Exit Status	Description
		    1		 Success	
		   100		 Success (TEST)
		    0		 Fail
		    2		 Cancel (GUI Only)

JAVA OPTIONS

	-Xms[nnn]m		Sets minimum memory heap size where nnn=RAM size
					in MB
	-Xmx[nnnn]m		Sets maximum memory heap size where nnnn=RAM size
					in MB (if not use, max will be determined by JAVA
					installation which is generally 256MB)

FECLOAD OPTIONS

	-h or -help	Displays help/usage information.	
	-v		Use exclusively to obtain version information.
	-b		Use exclusively in conjunction with '-v' to obtain build 
			information (eg. -vb)

	-properties     Use for Windows and Non-Windows platforms to define
			properties file absolute path with default as
			disclose.properties...[path]<properties file>

	Following Options may also be stored in properties file
	with command line Options superseding.

	-supersedes	Use if filing is an amendment to define the original filing
			id
	-tcp		Use mutually exclusive with '-ssl' option to define filing
			method
			<true|false> (Default is 'true', if not used)
	-ssl		Use mutually exclusive with tcp option to define filing
			method
			<true|false> (Default is 'false', if not used)
	-filerid	Use to define the filer's FEC Assigned ID
	-filerpasswd	Defines the filer's password (will not populate in GUI)
	-fax		Defines the filer's fax
	-email		Defines the filer's email (Two Max separated by semicolon)
	-sslhost	Defines ssl host server URL
	-tcphost	Defines tcp host server URL
	-test		Use to determine if filings should be submitted as TEST
			filing
			<true|false> (Default is 'false', if not used)
	-testtcphost 	Defines the test server URL to use for tcp filing method in 
			conjuntuction with '-test' option>
	-agencyid	Defines non-test agency id
	-proxyserver	Defines proxy server URL or IP Address
	-proxyuser	Defines the username for use with '-proxyserver' option
	-proxyport	Defines the port used from user's machine to Proxy Server
			for use with '-proxyserver' option
	-proxypasswd	Defines password for use with '-proxyserver' option
	-feedback	Defines the file to store the filing server feedback

EXAMPLES
	Display FECLoad (GUI) version/build to determine latest build:
		java -jar FECLoad.jar -v
	Display DiscloseClient (command line) version/build to determine latest
	build:
		java -jar DiscloseClient.jar -v
	Display FECLoad (GUI) usage information:
		java -jar FECLoad.jar -h
	Display DiscloseClient (command line) usage information:
		java -jar DiscloseClient.jar -h

	Launch FECLoad (GUI) with prepopulated fields:
		java -jar FECLoad.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com
	Launch DiscloseClient (command line) with prepopulated fields:
		java -jar DiscloseClient.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com

	Launch FECLoad (GUI) with prepopulated filer and Vendor TEST filing host
	fields for TCP filing method:
		java -jar FECLoad.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -tcp true
		 -tcphost testing.nictusa.com -agencyid VEND
	Launch DiscloseClient (command line) with prepopulated filer and Vendor TEST
	filing host fields for TCP filing method:
		java -jar DiscloseClient.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -tcp true -tcphost testing.nictusa.com -agencyid VEND C:\temp\Q1.fec

	Launch FECLoad (GUI) with prepopulated filer and TEST filing host fields for
	TCP filing method:
		java -jar FECLoad.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -tcp true -tcphost testing.nictusa.com -agencyid TEST C:\temp\Q1.fec
	Launch DiscloseClient (command line) with prepopulated filer and TEST
	filing host fields for TCP filing method:
		java -jar DiscloseClient.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -tcp true -tcphost testing.nictusa.com -agencyid TEST C:\temp\Q1.fec

	Launch FECLoad (GUI) with prepopulated filer and filing host fields for TCP
	filing method:
		java -jar FECLoad.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -tcp true -tcphost disclose.nictusa.com -agencyid FEC C:\temp\Q1.fec
	Launch DiscloseClient (command line) with prepopulated filer and filing host
	fields for TCP filing method:
		java -jar DiscloseClient.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -tcp true -tcphost disclose.nictusa.com -agencyid FEC C:\temp\Q1.fec

	Launch FECLoad (GUI) with prepopulated filer and proxy server fields for SSL
	filing method:
		java -jar FECLoad.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -ssl true -sslhost webforms.nictusa.com -proxyserver proxy.server.com -proxyport 8080 -proxyuser user -proxypasswd upassword C:\temp\Q1.fec
	Launch DiscloseClient (command line) with prepopulated filer and proxy server
	fields for SSL filing method:
		java -jar DiscloseClient.jar -filerid C00000000 -fax 1234567890 -email filer@myemail.com;filer2@myemail.com -ssl true -sslhost webforms.nictusa.com -proxyserver proxy.server.com -proxyport 8080 -proxyuser user -proxypasswd upassword C:\temp\Q1.fec

====================================================================================

								*** End of Text ***