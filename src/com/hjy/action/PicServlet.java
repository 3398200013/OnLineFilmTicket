package com.hjy.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjy.entity.TUser;
import com.icss.util.SysConfig;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

@WebServlet(urlPatterns="/PicServlet")
public class PicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   
    public PicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SmartUpload smu = new SmartUpload();
		TUser user = (TUser) request.getSession().getAttribute("user");
		try {
			java.io.File filePath = new java.io.File(SysConfig.getImgPath());
			if(!filePath.exists()){
				filePath.mkdirs();   
			}
			
			smu.initialize(this.getServletConfig(), request, response);
			smu.setCharset("utf-8");
			smu.setAllowedFilesList("gif,jpg,png,bmp,jpeg");
			smu.setMaxFileSize(1024*1024);
			smu.upload();			
			File file = smu.getFiles().getFile(0);
			String fileExt = file.getFileExt();//扩展名
			String uname = user.getUname();
			
			java.io.File realfile = new java.io.File(SysConfig.getImgPath() + "/"+uname+"."+file.getFileExt());
			file.saveAs(realfile.toString());	
			
			String picUrl = SysConfig.getImgServerUrl() + "/user/"+uname+"."+file.getFileExt();
			user.setUserpic(picUrl);
			
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("picSave.do").forward(request, response);
		//	response.getWriter().write("{\"success\":1,\"messgae\":\"upload successful\",\"url\":\""+SysConfig.getImgServerUrl() + "/" + file.getFilePathName()+"\"}");		
		} catch (SmartUploadException e) {
			
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
