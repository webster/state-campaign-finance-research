Doc ID:  ReadMe.txt						   Date:  6/29/2012




		F E D E R A L   E L E C T I O N   C O M M I S S I O N
		=====================================================

			   Vendor Package Version 8.0.1.8
			   ==============================


The Vendor Developer Pack is provided for use by Third Party Vendors who wish 
to modify campaign finance software that is not developed and distributed by 
the Federal Election Commission (FEC).

Third Party campaign finance software must be modified by programmers in order 
for it to meet the proper filing format (Refer to FEC_Format_v8.0.pdf and 
FEC_Format_v8.0.xlsx) necessary for filing a report electronically with the 
Federal Election Commission. The documentation, program and sample electronic 
report files included in this Developer Pack may be used by programmers to 
help them make those modifications necessary to support FEC electronic filing 
requirements.  

Executable programs included in this Vendor Developer Pack are designed to run 
on computers which run Microsoft Windows XP (or higher) operating systems.  
They have been developed for the Federal Election Commission by NIC 
Technologies.  Programs and any accompanying run-time libraries and files may 
be incorporated into software developed by Third Parties.  The programs may be 
distributed by Third Parties to their clients and customers without royalties 
or licensing restrictions.  

Acknowledgement of NIC software copyright does not need to be included within
Third Party software, however NIC does maintain copyrights to the following
program: FECCheck.jar.



        Files & Directories contained in the Vendor Developer Pack
        ==========================================================


Root directories:
-----------------
   FECCheck (Version 8.0.1.5)
   FECLoad  (Version 8.0.1.4)
   FECPrint (Version 8.0.1.8)


ReadMe.txt           This file lists the contents of VendPak.zip.  

FEC_Format_v8.0.pdf  Adobe document - describes FEC specifications for 
                     electronic filing.  

FEC_Format_v8.0.xlsx  MS Excel spreadsheet - Contains detailed formats for
                     each type of record used in electronic filings.  


FECCheck (directory contains v8.0.1. FECCheck JAVA Validator files)

|-->ReadMe.txt				{This 'Read_Chk.txt' file}
|
|
|-->FECCheck.jar			JAVA version of the FEC Validator.
|
|
|-->FECCheck.bat			SAMPLE-Windows batch file to call
|					FECCheck.jar.
|
|
|-->{Samples}.FEC			Samples ".FEC" files are included as 
|					examples of electronic files. They can be
|					run through FECCheck to assist developers 
|					in getting familiar with the program.  
|
|

FECload (directory contains v8.0.1.0 FECload JAVA files)

|-->ReadMe.txt				{This 'Read_Upl.txt' file}
|
|-->FECload.jar				JAVA GUI that uses the DiscloseClient.jar,
|					enabling filers to send or "UpLoad" their
|					electronic filings to the FEC.
|
|-->FECLoad.bat				SAMPLE-Windows batch file to call FECLoad.jar.
|
|
|-->lib (Directory)	DiscloseClient Command line Dependency Files
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
|
|-->lib (Directory) 	FECLoad JAVA GUI Dependency Files 
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

FECPrint (directory contains v8.0.1.0 FECPrint JAVA files)

|ReadMe.txt     			{This 'Read_Prn.txt' file}
|
|fecprint.jar				JAVA version of the FEC Print Utility
|
|fecprint.properties			Contains predefined and modifiable configuration
|					settings for Windows platform (requires read/write
|					permissions on your system)
|
|fecprint_unix.properties		Contains predefined and modifiable configuration
|					settings for NON-Windows platform (requires 
|					read/write permissions on your system)
|
|fecprint.bat				SAMPLE-Windows batch file to call FECPrint with
|					the necessary windows platform specific	JAVA
|					classpaths to required libraries
|							
|fecprint_linux.sh			SAMPLE-Linux script file to call FECPrint with
|					the necessary Linux platform specific JAVA
|					classpaths to required libraries
|
|fecprint_mac.sh			SAMPLE-MAC OS X script file to call FECPrint
|					with the necessary MAC OS X platform JAVA
|					classpaths to required libraries.
|
|{Samples}.FEC				Samples ".FEC" files are included as examples of
|					electronic files. They can be run through FECCheck
|					to assist developers in getting familiar with the
|					program.
|
|
|*.png / *.jpg				Required image files
|
|
|mapping (Directory) 			Contains coordinate specifications for all FEC forms
|
|resources (Directory)			Contains PDF templates of all FEC Forms 
|
|lib (Directory)			Contains cross-platform specific jar files
|
|--->Core libraries are required for all engines and platforms: 
|	|				
|	|jxbrowser-2.x.jar     		
|	|				
|	|slf4j-api-1.5.8.jar
|	|
|	|slf4j-log4j12-1.5.8.jar
|	|
|	|log4j-1.2.15.jar
|	|
|	|commons-io-1.4.jar
|	|
|	|commons-lang-2.4.jar
|	|
|	|commons-logging.jar
|	|
|	|license.jar
|	|
|	|iText-2.1.4.jar
|
|
|--->WINDOWS [Mozilla Firefox browser (only JDK 32-bit)]
|	|				
|	|engine-gecko.jar   		
|	|				
|	|MozillaGlue.jar
|	|
|	|MozillaInterfaces.jar
|	|
|	|xulrunner-windows.jar
|	|
|	|winpack-3.8.jar
|
|
|--->WINDOWS [Microsoft Internet Explorer browser (JDK 32-bit or 64-bit)]
|	|				
|	|engine-ie.jar   		
|	|				
|	|winpack-3.8.jar
|
|
|--->WINDOWS [Microsoft Internet Explorer browser (JDK 32-bit or 64-bit) or Mozilla
|    Firefox browser (only JDK 32-bit)]
|
|	|engine-ie.jar   		
|	|				
|	|winpack-3.8.2.jar
|	|
|	|engine-gecko.jar   		
|	|				
|	|MozillaGlue.jar
|	|
|	|MozillaInterfaces.jar
|	|
|	|xulrunner-windows.jar
|
|
|--->LINUX [Mozilla Firefox browser (JDK 32-bit or 64-bit)]
|	|
|	|engine-gecko.jar   		
|	|				
|	|MozillaGlue.jar
|	|
|	|MozillaInterfaces.jar
|	|
|	|xulrunner-linux.jar
|	|
|	|xulrunner-linux64.jar
|	|
|	|tuxpack-0.2.jar
|
|
|--->Mac OS X [Mozilla Firefox browser (only JDK 32-bit or enabled 32-bit mode)]
|	|engine-gecko.jar   		
|	|				
|	|MozillaGlue.jar
|	|
|	|MozillaInterfaces.jar
|	|
|	|xulrunner-mac.jar
|
|--->Mac OS X [Safari browser (JDK 32-bit or JDK 64-bit)]
|	|
|	|engine-webkit.jar	

=====================================================================================

				 *** End of Text *** 

