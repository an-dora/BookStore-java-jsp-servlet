package com.zh.process;

public class RuntimeException extends java.lang.RuntimeException{
	private static final long serialVersionUID = 1L;
	public static final Integer GENERIC= 1000;
	private Integer errorCode;
	public RuntimeException(Integer errorCode, Throwable cause) {
        this(errorCode, null, cause);
	}
	public RuntimeException(String message, Throwable cause) {
        this(GENERIC, message, cause);
	}
	public RuntimeException(Integer errorCode, String message, Throwable cause) {
		super(message, cause);
        this.errorCode = errorCode;
	}
	public Integer getErrorCode() {
        return errorCode;
	} 

}
