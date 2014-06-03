<%
	String brands[] = new String[]{"iPhone", "Android", "Blackberry", "Others"};
	int percentages[] = new int[]{64, 19, 9, 8};
	String tempAddress ="http://chart.apis.google.com/chart?cht=lc&chs=300x100&chd=t:";
	for(int i = 0 ; i < percentages.length ; i++ ){
	   	tempAddress = tempAddress + percentages[i];
		if(i < percentages.length - 1){
			tempAddress = tempAddress + ",";
		}						
	}	   	   	   
	tempAddress += "&chl=";
	for(int i = 0 ; i < brands.length ; i++ ){
	   	tempAddress = tempAddress + brands[i] + "("+percentages[i]+"%)";
		if(i < brands.length - 1){
			tempAddress = tempAddress + "|";
		}						
	}	
%>
<html>
<head>
  <title>Show Line Chart JSP</title>
	<script type="text/javascript">
	
    function bt1Click(){
 
	      document.getElementById('URL').value = '<%=tempAddress%>';
	   	  var imgTag = '<img src="'+document.getElementById('URL').value+'" />';
	      document.getElementById('canvas').innerHTML = imgTag;	 

	}    
    </script>
    

    
</head>
<body>
<div id='canvas'></div>
    Call Google Chart API URL:
    <input name="URL" type="text" id="URL" value="">
    <input type="submit" name="bt1" id="bt1" value="Generate Chart" onClick="bt1Click()">		

</body>
</html>
