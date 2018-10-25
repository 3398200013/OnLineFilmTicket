
package com.icss.util;

import javax.xml.parsers.*;
import org.w3c.dom.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
import java.io.*;

public final class XMLDomUtil {
	  public static final String DEFAULT_ENCODING = "UTF-8";	  
	  
	  private XMLDomUtil() {}
	  
	  public static void SaveDocumentToFile(Document document,String strTargetFile ) throws Exception{
		  Transformer trans;
		
		  if(document!=null && strTargetFile!=null){
			  File fXml = new File(strTargetFile);
			  if(fXml.exists()){
				  fXml.delete();
			  }				
			  trans = TransformerFactory.newInstance().newTransformer();  				
			  trans.setOutputProperty(OutputKeys.ENCODING, "gb2312"); 
			  trans.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no"); 
			  trans.setOutputProperty(OutputKeys.INDENT, "yes");		
			  DOMSource source = new DOMSource(document);				  
			  //StreamResult可以为xml文件、纯文本文件、html文件
			  StreamResult result = new StreamResult(fXml);			  
			  trans.transform(source,result);				
		  }	
	  }
	  
	  
	  public static Document getXMLDocument(InputStream stream) throws Exception{		
		 
		  DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
		  builderFactory.setValidating(false);
		  DocumentBuilder builder = builderFactory.newDocumentBuilder();		
		  
		 return builder.parse(stream);	     
	  }
	
	  public static Document getXMLDocument(String  strFileName) throws Exception{		    
		 
		 InputStream  stream =  new FileInputStream(strFileName);	 
		 return XMLDomUtil.getXMLDocument(stream);
				    
	  }	  
	 
	
	  public static Document createDocument() throws Exception{
		  Document document ;		  

		  DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
		  builderFactory.setValidating(false);
		  DocumentBuilder builder = builderFactory.newDocumentBuilder();			  
		  document = builder.newDocument();
	    
	     return document;
	  }
}
