package com.szmw.action;

import com.opensymphony.xwork2.ActionSupport;
import com.szmw.qrcode.MatrixToImageWriter;

/**
 * 
 * @author Administrator 接口调用层
 */
public class APIAction extends ActionSupport {

	/**
	 * UID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 默认执行方法
	 */
	@Override
	public String execute() throws Exception {
		MatrixToImageWriter.saveQRCodeToPath("http://www.vxinfeng.com",
				"d:\\wxx.png");
		return SUCCESS;
	}
}
