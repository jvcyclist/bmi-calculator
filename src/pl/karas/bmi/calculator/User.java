package pl.karas.bmi.calculator;

import java.util.Locale;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class User {

	private String firstName;
	private String lastName;
	
	@Min(value=30, message="Co najmniej 30 kg")
	@NotNull(message="* Pole wymagane")
	private float weight;
	
	
	@Min(value=150, message="Co najmniej 150 cm")
	@NotNull(message="* Pole wymagane")
	private float height;
	private String result;
	private float ratio;

	// change limit digits to one next to "."
	private float limitDigits(float number) {
	    return Float.valueOf(String.format(Locale.getDefault(), "%.1f", number));
	}
	
	//return ratio in format "f.f"
	public float getRatio() {
		this.ratio=(this.weight)/(((this.height)/100)*((this.height)/100));
		return limitDigits(this.ratio);
	}
	
	public String getResult() {
		
		if(ratio<18.5) {this.result="niedowaga";};
		if((ratio>=18.5)&&(ratio<=24.9)) {this.result="waga prawidlowa";};	
		if((ratio>=25)&&(ratio<=29.9)) {this.result="nadwaga";}
		if(ratio>29.9){this.result="duza nadwaga";};
		
		return this.result;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public float calcBmi(float weight, float height) {
		return weight / (height * height);

	}

}
