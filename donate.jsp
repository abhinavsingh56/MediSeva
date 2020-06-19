<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<table id="customers">
  <tr>
    <th>Name</th>
    <th>Price</th>
    <th>Mfg Date</th>
    <th>Exp date</th>
      <th>donate Medicine</th>
  </tr>
  </tr>
  <tr>
      
    <td>pareacetamol</td>
    <td>$85</td>
    <td>8-3-18</td>
    <td>8-3-19</td>
   <td> 
       <form id="two">
         <input type = "button" value = "donate" onclick = "Redirect();" />
      </form></td>
  </tr>
  
  <tr>
   <td>Crocin</td>
    <td>$85</td>
    <td>8-3-18</td>
    <td>8-3-19</td>
    <td> 
       <form id="one">
         <input type = "button" value = "donate" onclick = "Redirectone();" />
      </form></button></td>
  </tr>
  
  
  
  
  
  <tr>
   <td>antivenom</td>
    <td>$85</td>
    <td>8-3-18</td>
    <td>8-3-19</td>
    <td> 
       <form id="one">
         <input type = "button" value = "donate" onclick = "Redirectthree();" />
      </form></button></td>
  </tr>
  
  
  
  
  
  
  
  
  </tr>
</table>

    
    
    
    
    
    
    <script type = "text/javascript">
         
            function Redirect() {
               window.location = "donate1.jsp";
            }
            
             function Redirectone() {
               window.location = "donate2.jsp";
            }
            
            
             function Redirectthree() {
               window.location = "donate3.jsp";
            }
        
      </script>
   </head>
   
   <body>
    
      
     
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</body>
</html>
