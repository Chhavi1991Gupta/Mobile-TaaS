<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team 25</title>
</head>
<body bgcolor=grey>


	<form action="loadBalancerMain" method="post">
	<table align="center" cellpadding="10" cellspacing="10">
	
	
	
	<tr>
	<td>
		RAM
	</td>
	<td>
		<select name="ram">
		
		
		
		
		<option id="1" value="1">1</option>
		<option id="2" value="2">2</option>
		<option id="3" value="5">5 </option>
		<option id="4" value="8">8</option>
		</select>
	</td>
	</tr>
	
	
	
	<tr>
	<td>
		Algorithm
	</td>
	<td>
	
	<input type="radio" name="algo" value="Ant Colony">Ant Colony<br>
	<input type="radio" name="algo" value="Honey Bee">Honey-Bee<br>
	<input type="radio" name="algo" value="location Aware Algorithm">Location Aware Multiuser<br>
	<input type="radio" name="algo" value="Particle Swarm Optimization">Particle Swarm Optimization
	</td>
	</tr>
	
	
	
	<tr>
	<td>
		Operating System
	</td>
	<td>
		<select name="os">
		
		
		
		
		<option value="Amazon Linux AMI 2014.09.1 (HVM)(ami-b66ed3de)">Amazon Linux AMI 2014.09.1 (HVM)</option>
		<option  value="Red Hat Enterprise Linux 7.0 (HVM), SSD Volume Type()ami-a8d369c0">Red Hat Enterprise Linux 7.0 (HVM), SSD Volume Type</option>
		<option  value="SuSE Linux Enterprise Server 12 (HVM), SSD Volume Type(ami-aeb532c6)">SuSE Linux Enterprise Server 12 (HVM), SSD Volume Type </option>
		<option value="Microsoft Windows Server 2012 R2 Base(ami-c49c0dac)">Microsoft Windows Server 2012 R2 Base</option>
		<option  value="Microsoft Windows Server 2012 R2 with SQL Server Web(ami-8a9f0ee2)">Microsoft Windows Server 2012 R2 with SQL Server Web</option>
		<option  value="Microsoft Windows Server 2012 with SQL Server Express(ami-c09d0ca8)">Microsoft Windows Server 2012 with SQL Server Express</option>
		</select>
	</td>
	</tr>
	
	
	
	
	
	<tr>
	<td>
		Bit
	</td>
	<td>
	
	<input type="radio" name="bit" value="32">32
	<input type="radio" name="bit" value="64">64
	</td>
	</tr>
	
	
	
	
	<tr>
	<td>
		CPU Version
	</td>
	<td>
	
	<input type="radio" name="cpu" value="1">Single Core
	<input type="radio" name="cpu" value="2">Dual Core
	</td>
	</tr>
	
	<tr>
	<td>
		No. of Instance
	</td>
	<td>
	
	<input type="text" name="instance" >
	</td>
	</tr>
	
	
	
	<tr>
	<td>
		Internal Memory
	</td>
	<td>
		<input type="text" name="cpumemory" id="cpumemory"/>
	</td>
	</tr>
	<tr>
	<td colspan="2">
	<input type="submit" value="Launch Instance">
	</td>
	</tr>
	</table>
		
		
	
	
	</form>

</body>
</html>