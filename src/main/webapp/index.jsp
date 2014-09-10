<%@page import="java.net.MalformedURLException"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String host = "UNDEFINED";
try {
	URL url = new URL(request.getRequestURL().toString());
	host = url.getHost();
} catch (MalformedURLException e) {
	e.printStackTrace();
	host = "ERROR";
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<style>
		@import 'css/layout.css';
	</style>
	<script language="javascript" type="text/javascript" src="js/jquery.tools.min.js"></script>
	<title>OpenTOSCA Overview</title>
</head>
<body>
	<div id="pageContainer">
		<div id="page">

			<div id="header">
				<div id="mainMenu" style="color: rgb(212, 226, 225);font-size: 22px; line-height: 44px;">
					Hi there, this is OpenTOSCA!
				</div>
			</div>
			<div id="content">
				<table cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td id="menuColumn" valign="top" rowspan="2">
								<div>									
									<ul>
										<li>
											<a href="#UserInterfaces">User Interfaces</a>
										</li>
										<li>
											<a href="#Documentation">Documentation</a>
										</li>
										<li>
											<a href="#LicenseAndNotice">License and Notice</a>
										</li>
									</ul>
								</div>
							</td>
							<td id="shadowTopColumn"><img src="images/contentShadowTop.jpg" /></td>
							<td id="contentColumn" valign="top" rowspan="2">
								<div>
	
									<h2 id="UserInterfaces">User Interfaces</h2>
									If OpenTOSCA has been installed in the default configuration you can use the following User Interfaces and Tools:
									<br/>
									<br/>
									<a target="_blank" href="/admin">Administrative UI</a> - for <u>Admins</u> to deploy new CSARs and manage the container.
									<br/>
									<a target="_blank" href="/vinothek">Vinothek Self-Service Portal</a> - for <u>End Users</u> to create service instances.
									<br/>
									<a target="_blank" href="/winery">Winery Modeling Tool</a> - for <u>Cloud Service Creators</u> to create CSARs.
									<br/>
									<br/>
									For troubleshooting purposes you may additionally want to use:
									<br/>
									<br/>
									<a target="_blank" href="https://<%= host %>:9443/carbon">WSO2 Business Process Server (BPS)</a> (default credentials: admin / admin)<br/>
									<a target="_blank" href="http://<%= host %>:1337/containerapi">OpenTOSCA Container API (REST)</a> (no login required)<br/>
									
									<h2 id="Documentation">Documentation</h2>
									OpenTOSCA documentation, publications, videos, presentations can be found on the <a href="http://www.opentosca.org" target="_blank">OpenTOSCA Website</a>.
									
									<h2 id="LicenceAndNotice">License and Notice</h2>
									This software is licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0.html" target="_blank">Apache 2.0 License</a>.
									<a href="https://github.com/OpenTOSCA/container/blob/master/NOTICE">Notice File of OpenTOSCA Container</a> 
								
								</div>

							</td>
						</tr>
						<tr>
							<td id="shadowMiddleAndBottomColumn" valign="bottom">
								<img src="images/contentShadowBottom.jpg" />
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="footer">
				Copyright 2013
			</div>

		</div>
	</div>
</body>
</html>