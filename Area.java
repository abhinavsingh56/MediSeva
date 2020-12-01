class Area{
	 
		
	
	
  //for square
  Area(int side){
  	
  	int area=side*side;
    System.out.println("area for square"+" "+  area);
  }

//for rectangle
  Area(int length,int breath)
{
	int area=length*breath;
	 System.out.println("area for rectangle"+" "+  area);
}


//for circle
Area(double r)
{
	double area=22/7*r*r;
	 System.out.println("area for circle"+" "+  area);
}


public static void main(String[] args) {
	//for Square
	Area s=new Area(4);
    //for rectangle 
    Area r=new Area(5,9);
    //for Circle
    Area c=new Area(8d);

}
}