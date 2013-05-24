Doc ID:  Read_Prn.txt						   Date:  6/29/2012


			F E D E R A L   E L E C T I O N   C O M M I S S I O N
			=====================================================

				   Vendor Package Version 8.0.1.8
				   ==============================



				The FECprint JAVA Utility (v8.0.1.8)
				====================================



Contents of the FECprint directory
==================================

|ReadMe.txt     			{This 'Read_Prn.txt' file}|
|
|fecprint.jar				JAVA version of the FEC Print Utility
|
|fecprint.properties			Contains predefined and modifiable 
|					configuration settings for Windows platform
|					(requires read/write permissions on your
|					system). The result's output directory is
|					defined in this file.
|
|Fecprint_unix.properties		Contains predefined and modifiable
|					configuration settings for NON-Windows
|					platform (requires read/write permissions on
|					your system). The result's output directory is
|					defined in this file.
|
|fecprint.bat				SAMPLE-Windows batch file to call FECPrint 
|					with the necessary windows platform specific
|					JAVA classpaths to required libraries.
|							
|fecprint_linux.sh			SAMPLE-Linux script file to call FECPrint with
|					the necessary Linux platform specific JAVA
|					classpaths to required libraries.
|
|fecprint_mac.sh			SAMPLE-MAC OS X script file to call FECPrint
|					with the necessary MAC OS X platform JAVA
|					classpaths to required libraries.
|
|*.png / *.jpg				Required image files
|
|mapping (Directory) 			Contains coordinate specifications for all FEC forms
|
|resources (Directory)			Contains PDF templates of all FEC Forms 
|
lib (Directory)				Contains cross-platform specific jar files
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
     Firefox browser (only JDK 32-bit)]
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

System Requirements
===================

**Requires JRE 1.6 or higher
**The application requires following browser/OS combination to run successfully.
	-Internet Explorer  on Windows ,
	-Mozilla Firefox  on Linux systems
	-Safari on Mac OS 
**Latest version of Adobe Acrobat reader must be installed on the system running
  this application
**The application requires two directories with read/write permissions on your
	system. The default setting for these directories can be found in the
	"fecprint.properties" or the "fecprint_unix.properties" file under
	application home directory. The application uses the "OUTPUT_DIR" to
	generate the PDF files and the "MRU_DIR" is used to store the most recently
	used file list. You can	configure these directories to align with your data
	storage requirement and organizational practices.
      

Memory Allocation
=================
Should the application performance degrade or an "OutOfMemoryException" error occur
when viewing a very large filing, upgrade the maximum heap size parameter in the call.
This parameter may be increased in relation to the available system RAM. The maximum
heap size parameter set in the included sample script/batch files is 1024MB.


Using FECPrint (Windows)
========================

Included are a sample windows batch file and several non-windows scripts.
These files may be used to launch the FECPrint JAVA file or it may be
called programmatically.

Run the program and use the intuitive Graphical User Interface.

You can drag and drop a file onto the FECPrint.bat icon or run FECPrint from a
command line with the name of a '.fec' file, if you want to Start FECPrint
immediately with an electronic filing already in view.

To launch FECPRint without an electronic filing already in view, execute the
"fecprint.bat" file, located in application home directory, from the command
line or by simply double-clicking it..  Then, Left Click on File->Open from
the menu bar to select an electronic filing for viewing.


Using FECPrint (Non-Windows)
============================

Included are several sample non-windows scripts. These files may be used
to launch the FECPrint JAVA file or it may be called programmatically.

You run FECPrint from a command line with the name of a '.fec' file, if you 
want to Start FECPrint immediately with an electronic filing already in view.

To launch FECPrint without an electronic filing already in view on Non-Windows
platform, execute the appropriate script for the required platform. Then,
Left Click on File->Open from the menu bar to select an electronic filing
for viewing.


Command Description
===================

FECPrint may be called programmatically or run from command line.

USAGE / SYNTAX 
	
	java [JAVA OPTIONS] com.nictusa.fecprint.FECPrint [FECPRINT OPTIONS] [[DRIVE:][\path\]inputfilename[.FEC]]

DESCRIPTION

	FECPrint is a cross-platform PDF renderer of '.fec' electronic filings 
	(E-Filings). It uses the Federal Election Commission (FEC) PDF Templates 
	posted on the FEC Website (http://www.fec.gov/info/forms.shtml). This JAVA
	application supports FEC E-Filing formats V8 and above.

	Minimum JAVA requirement for FECLoad.jar is JAVA5 or higher and available
	at: http://www.java.com/en/download.
	
	FECPRint uses specific variables from the *.properties file. It uses the
	"OUTPUT_DIR" to generate the pdf files and the "MRU_DIR" is used to store
	the most recently used file list. These vairables can be configured to point
	to appropriate directories aligning with your data storage requirements and
	organizational practices.

JAVA OPTIONS

	-splash:.\fecprintsplash.jpg	Displays splash image while initial PDFs are
					generated upon launching FECPrint (Windows only)
	-Xms[nnn]m			Sets minimum memory heap size where nnn=RAM size
					in MB
	-Xmx[nnnn]m			Sets maximum memory heap size where nnnn=RAM size
					in MB (if not use, max will be determined by JAVA
					installation which is generally 256MB)

	Following Option must be used to define the necessary cross-platform specific
	JAVA classpaths to required libraries. 
	
	-cp				MANDATORY OPTION used to set the platform
					specific JAVA classpaths of cross-platform jar
					libraries (see "Contents of the FECprint
					directory" section of this document for a list of
					necessary browser/platform specific jar files to
					include in this option). Current working
					directory must be included as well (see sample
					batch/script files). Path may be absolute or
					relative and separated by semi-colons (Windows)
					or colons (Non-Windows).
					[path]<jar file>;[path]<jar file>

	NOTE: JAVA classpaths are defined in the '-cp' option to provide flexible
	platform/browser customization alternatives.

FECPRINT OPTIONS

	-h 		Use exclusively to displays help/usage information.	
	-v		Use exclusively to obtain version information.
	silent		Use to generate all PDFs (single pages and complete) in
			user interface mode to an 'OUTPUT_DIR' subdirectory based on
			the filename given. The 'OUTPUT_DIR' location is defined variable
			in the FECPrint.properties files. 
			NOTE: If single page PDFs are not required set 
			'DELETE_PAGE_FILES_ON_CONCATE' in the FECPrint.properties to 
			'true'. This will remove individual pages upon completion
			of PDF concatenation.
	
EXAMPLES

	Call FECPrint with the necessary windows platform specific JAVA classpaths to
	required libraries:
		
			java -splash:./fecprintsplash.jpg -Xms124m -Xmx1024m -cp .\;.\fecprint.jar;.\lib\commons-io-1.4.jar;.\lib\commons-lang-2.4.jar;.\lib\commons-logging.jar;.\lib\iText-2.1.4.jar;.\lib\jxbrowser-2.9.jar;.\lib\license.jar;.\lib\log4j-1.2.15.jar;.\lib\slf4j-api-1.5.8.jar;.\lib\slf4j-log4j12-1.5.8.jar;.\lib\engine-ie.jar;.\lib\winpack-3.8.2.jar;.\lib\engine-gecko.jar;.\lib\MozillaGlue.jar;.\lib\MozillaInterfaces.jar;.\lib\xulrunner-windows.jar com.nictusa.fecprint.FECPrint C:\temp\Q1-2015.fec


	Call FECPrint to display usage information with the necessary Windows platform specific JAVA classpaths to
	required libraries:
		
			java -splash:./fecprintsplash.jpg -Xms124m -Xmx1024m -cp .\;.\fecprint.jar;.\lib\commons-io-1.4.jar;.\lib\commons-lang-2.4.jar;.\lib\commons-logging.jar;.\lib\iText-2.1.4.jar;.\lib\jxbrowser-2.9.jar;.\lib\license.jar;.\lib\log4j-1.2.15.jar;.\lib\slf4j-api-1.5.8.jar;.\lib\slf4j-log4j12-1.5.8.jar;.\lib\engine-ie.jar;.\lib\winpack-3.8.2.jar;.\lib\engine-gecko.jar;.\lib\MozillaGlue.jar;.\lib\MozillaInterfaces.jar;.\lib\xulrunner-windows.jar com.nictusa.fecprint.FECPrint -h

	Call FECPrint to display version information with the necessary Windows platform specific JAVA classpaths to
	required libraries:
		
			java -splash:./fecprintsplash.jpg -Xms124m -Xmx1024m -cp .\;.\fecprint.jar;.\lib\commons-io-1.4.jar;.\lib\commons-lang-2.4.jar;.\lib\commons-logging.jar;.\lib\iText-2.1.4.jar;.\lib\jxbrowser-2.9.jar;.\lib\license.jar;.\lib\log4j-1.2.15.jar;.\lib\slf4j-api-1.5.8.jar;.\lib\slf4j-log4j12-1.5.8.jar;.\lib\engine-ie.jar;.\lib\winpack-3.8.2.jar;.\lib\engine-gecko.jar;.\lib\MozillaGlue.jar;.\lib\MozillaInterfaces.jar;.\lib\xulrunner-windows.jar com.nictusa.fecprint.FECPrint -v


	Call FECPrint in non-UI mode with the necessary Windows platform specific
	JAVA classpaths to required libraries to output all PDFs (single pages and
	complete) to an 'OUTPUT_DIR' subdirectory based on the filename given:

			java -splash:./fecprintsplash.jpg -Xms124m -Xmx1024m -cp .\;.\fecprint.jar;.\lib\commons-io-1.4.jar;.\lib\commons-lang-2.4.jar;.\lib\commons-logging.jar;.\lib\iText-2.1.4.jar;.\lib\jxbrowser-2.9.jar;.\lib\license.jar;.\lib\log4j-1.2.15.jar;.\lib\slf4j-api-1.5.8.jar;.\lib\slf4j-log4j12-1.5.8.jar;.\lib\engine-ie.jar;.\lib\winpack-3.8.2.jar;.\lib\engine-gecko.jar;.\lib\MozillaGlue.jar;.\lib\MozillaInterfaces.jar;.\lib\xulrunner-windows.jar com.nictusa.fecprint.FECPrint silent C:\temp\Q1-2015.fec

	Call FECPrint with the necessary Linux platform specific JAVA classpaths to
	required libraries:

			java -Xms1024m -Xmx2048m -cp ./:./fecprint.jar:./lib/commons-io-1.4.jar:./lib/commons-lang-2.4.jar:./lib/commons-logging.jar:./lib/iText-2.1.4.jar:./lib/jxbrowser-2.9.jar:./lib/license.jar:./lib/log4j-1.2.15.jar:./lib/slf4j-api-1.5.8.jar:./lib/slf4j-log4j12-1.5.8.jar:./lib/engine-gecko.jar:./lib/MozillaGlue.jar:./lib/MozillaInterfaces.jar:./lib/tuxpack-0.2.jar:./lib/xulrunner-linux64.jar:./lib/xulrunner-linux.jar com.nictusa.fecprint.FECPrint C:\temp\Q1-2015.fec

	Call FECPrint with the necessary MAC OS X platform JAVA classpaths to required
	libraries:

			java -Xms1024m -Xmx2048m -cp ./:./fecprint.jar:./lib/commons-io-1.4.jar:./lib/commons-lang-2.4.jar:./lib/commons-logging.jar:./lib/iText-2.1.4.jar:./lib/jxbrowser-2.7.jar:./lib/license.jar:./lib/log4j-1.2.15.jar:./lib/slf4j-api-1.5.8.jar:./lib/slf4j-log4j12-1.5.8.jar:./lib/engine-gecko.jar:./lib/MozillaGlue.jar:./lib/MozillaInterfaces.jar:./lib/engine-webkit.jar:./lib/xulrunner-mac.jar com.nictusa.fecprint.FECPrint C:\temp\Q1-2015.fec

===================================================================================== 

								*** End of Text *** 
