package com.hjy.action;

import java.io.IOException;

import javax.servlet.AsyncContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.util.SysConfig;
import com.jspsmart.upload.SmartUpload;

/**
 * Servlet implementation class BookPicSvl
 */
@WebServlet(urlPatterns = "/GetPicSvl", asyncSupported = true)
public class GetPicSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetPicSvl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		
		ServletConfig config = this.getServletConfig();
		AsyncContext ac = request.startAsync(); 
		ServletOutputStream out = ac.getResponse().getOutputStream();
		out.setWriteListener(new WriteListener() {
			@Override
			public void onWritePossible() throws IOException {
				if (uname != null && out.isReady()) {
					try {
						SmartUpload su = new SmartUpload();
						su.initialize(config, request, response);
						// 设置响应类型
						su.setContentDisposition(null);
						String filePath = SysConfig.getImgPath();
						su.downloadFile(filePath +"\\"+uname +".jpg");
						return;
					} catch (Exception e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}

				}
			}

			@Override
			public void onError(Throwable arg0) {
				
			}
		});

	}

}
