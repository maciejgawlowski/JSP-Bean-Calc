package atj;

public class Calculator {
	private double a, b;
	private String operation;
	private String toShow;
	private boolean aSetted = false, resultSetted = false;
	
	public Calculator(){
		a=0;
		b=0;
		operation="";
		toShow = "";
	}
	
	public double addition (){
		return a+b;
	}
	public double subtraction (){
		return a-b;
	}
	public double multiplication (){
		return a*b;
	}
	public double division (){
		return a/b;
	}
	public double root (){
		return 	Math.sqrt(a);
	}
	public double percent (){
		return 	a/100;
	}
	
	public double getA() {
		return a;
	}
	public void setA(double a) {
		this.a = a;
	}
	public double getB() {
		return b;
	}
	public void setB(double b) {
		this.b = b;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getToShow() {
		return toShow;
	}
	public void setToShow(String toShow) {
		this.toShow = toShow;
	}
	public boolean isaSetted() {
		return aSetted;
	}
	public void setaSetted(boolean aSetted) {
		this.aSetted = aSetted;
	}
	public boolean isResultSetted() {
		return resultSetted;
	}
	public void setResultSetted(boolean resultSetted) {
		this.resultSetted = resultSetted;
	}
	
}
