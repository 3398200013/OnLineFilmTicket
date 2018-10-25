package com.icss.util;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class SysConfig {	
	
	public static Document document;
	  
	 
	 static{
		 try {
			 String path = SysConfig.class.getResource("/").toURI().getPath();	
			 String fileName = path + "SysConfig.xml";		 
			 document =  XMLDomUtil.getXMLDocument(fileName);			
		} catch (Exception e) {
			e.printStackTrace();
		}		 
	 }
	 
	 public static String getImgPath() throws Exception{
		
		 Node node = document.getElementsByTagName("imgPath").item(0);		 
		 Element element = (Element)node;
		 
		 return  element.getTextContent();	 
	 }
	 
	 public static String getImgServerUrl() throws Exception{
        Node node = document.getElementsByTagName("imgServerUrl").item(0);		 
		Element element = (Element)node;
		 
		 return   element.getTextContent();	
	 }
	 
}
