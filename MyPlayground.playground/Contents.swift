func BMICalculator(weight: Double, height: Double) {
    let BMI = weight / (height * height)
    if BMI > 25 {
        print("Your BMI is \(BMI), you're overweight")
    } else if BMI > 18.5 && BMI < 25 {
        print("Your BMI is \(BMI), you'normal weight")
    } else {
        print("Your BMI is \(BMI), you're underweight")
    }
}

BMICalculator(weight: 70, height: 1.68)

