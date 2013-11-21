package walker;

import java.io.File;
import java.io.FileWriter;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class SetConfig {
	public static String FILEPATH = "../webapps/MAWalkerOnWeb/userConfig/" ;
	private ConfigBean cb = new ConfigBean();
	private String username = "";
	private boolean isLogin = false;
	
	public ConfigBean getCb() {
		if(isLogin){
			
			
			
			
		}
		
		
		return cb;
	}

	public void setCb(ConfigBean cb) {
		this.cb = cb;
	}

	
	
	
	public boolean login(String username,String passwd){
		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println(username);
		System.out.println(passwd);
		String fileName=FILEPATH+username+".xml";
		if(new File(fileName).exists()){
			Document document= load(fileName);
			Element root = document.getRootElement();		
			if(root.element("password").getText().equals(passwd)){
				isLogin = true;
				this.username = username;
				return true;
			}
			else return false;
			
		}else{
			Document document=load(FILEPATH+"demo.xml");
			Element root = document.getRootElement();
			root.element("username").setText(username);
			root.element("password").setText(passwd);
			doc2XmlFile(document,fileName);
			isLogin = true;
			this.username = username;
			return true;
		
		}
	}
	
	public static boolean doc2XmlFile(Document document,String filename) 
	   { 
	      boolean flag = true; 
	      try 
	      { 
	            /* 将document中的内容写入文件中 */ 
	            //默认为UTF-8格式，指定为"GB2312" 
	            OutputFormat format = OutputFormat.createPrettyPrint(); 
	            format.setEncoding("utf-8"); 
	            XMLWriter writer = new XMLWriter(new FileWriter(new File(filename)),format); 
	            writer.write(document); 
	            writer.close();             
	        }catch(Exception ex) 
	        { 
	            flag = false; 
	            ex.printStackTrace(); 
	        } 
	        return flag;       
	   }
	
	 public static Document load(String filename) 
	   { 
	      Document document = null; 
	      try  
	      {  
	          SAXReader saxReader = new SAXReader(); 
	          document = saxReader.read(new File(filename)); 
	      } 
	      catch (Exception ex){ 
	          ex.printStackTrace(); 
	      }   
	      return document; 
	   }

}
