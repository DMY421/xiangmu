<%!public String Bytes(String str) {
		try {
			String strOld = str;
			byte[] strNew = strOld.getBytes("ISO-8859-1");
			String bytes = new String(strNew, "gb2312");
			return bytes;
		} catch (Exception e) {
			return null;
		}
	}%>