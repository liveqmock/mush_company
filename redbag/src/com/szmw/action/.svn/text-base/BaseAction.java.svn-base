package com.szmw.action;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import weibo4j.org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.szmw.common.pojo.ResultInfo;
import com.szmw.common.utils.Constants;

/**
 * @author:穆世明
 * @describe: 基础action，继承ActionSupport，实现SessionAware, ServletRequestAware, ServletResponseAware
 * @createDate:2014-5-25 下午6:14:41
 */
@SuppressWarnings({"unchecked","rawtypes"})
public class BaseAction extends ActionSupport implements SessionAware, ServletRequestAware, ServletResponseAware {

	protected static Logger log = Logger.getLogger(BaseAction.class.getSimpleName());
	
	private static final long serialVersionUID = 1L;
	
	protected ResultInfo resultInfo = new ResultInfo();
	
	/**
	 * ajax返回结果
	 */
	protected String result;
	
	protected String mode;
	
	//错误列表
	protected List errorList = new ArrayList();
	
	protected InputStream fileDownLoad;

	protected HttpServletRequest request;   
    protected HttpServletResponse response;  
    protected SessionMap session;
    
    
    public String servletPath;
    
    public String toMode(){
    	if("result".equals(mode)){
    		setResultInfoNoPower();
    		result = setResult(resultInfo);
    		return Constants.RESULT;
    	}
    	return mode;
    }
    
    public String getServletPath() {
		return servletPath;
	}

	public void setServletPath(String servletPath) {
		this.servletPath = servletPath;
	}
	
	/**
	 * 导出Excel文件名称
	 */
    protected String fileName;
    
    public InputStream getInputStream() {
 	   return ServletActionContext.getServletContext().getResourceAsStream("/"+fileName+".xls");
 	}
       
	public String getRealPath() {
		return ServletActionContext.getServletContext().getRealPath("/");
	}	
	public void setSession(Map map) {		
		this.session = (SessionMap) map;
	}
	public void setServletRequest(HttpServletRequest request) {	
		this.request = request;
	}
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
		this.response.setCharacterEncoding("utf-8");
	}
	public SessionMap getSession() {
		return session;
	}
	/**
	 * 输出
	 * @param arg
	 * @throws IOException 
	 */
	public void write(String arg) throws IOException {			
		PrintWriter out = response.getWriter();
		out.flush();
		out.write(arg);
		out.close();		
	}
	/**
	 * 获得request并将其转换成Map
	 * @return Map<Object,Object>
	 */	
	public Map<Object,Object> getRequestMap(){
		Map<Object,Object> map = new HashMap<Object,Object>();
		Map<Object,Object> mTemp = request.getParameterMap();		
		for(Object key:mTemp.keySet().toArray()){
			Object[] value = (Object[])mTemp.get(key);		
			map.put(key, value.length==1?value[0]:value);			
		}
		return map;
	}
	
	/**
	 * 获取项目发布http路径
	 * @return
	 */
	public String getInputPath(){
    	servletPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+request.getContextPath();
    	return servletPath;
    } 
		
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public InputStream getFileDownLoad() {
		return fileDownLoad;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}
	
	public void setResultInfoSuccess(){
		resultInfo.setResultCode("1");
		resultInfo.setResultInfo("操作成功!");
	}
	
	public void setResultInfoError(){
		resultInfo.setResultCode("0");
		resultInfo.setResultInfo("操作失败!");
	}
	

	public void setResultInfoQueryIsNull(){
		resultInfo.setResultCode("0");
		resultInfo.setResultInfo("没有获取到数据");
	}

	public void setResultInfoParamsNotIsNull(){
		resultInfo.setResultCode("0");
		resultInfo.setResultInfo("参数不能为空！");
	}
	
	public void setResultInfoNoPower(){
		resultInfo.setResultCode("0");
		resultInfo.setResultInfo("您没有访问权限,请联系管理员!");
	}
	
	public String setResult(ResultInfo resultInfo){
		return new JSONObject(resultInfo).toString();
	}
}
