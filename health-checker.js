/**
 * 
 */
document.getElementById('check-health-btn').addEventListener('click', function() {
	const height = parseFloat(document.getElementById('height').value) / 100; // Convert height to meters
	const weight = parseFloat(document.getElementById('weight').value); // Get weight

	// Validate input
	if (isNaN(height) || isNaN(weight) || height <= 0 || weight <= 0) {
		document.getElementById('health-result').innerText = "Please enter valid positive numbers for height and weight.";
		return; // Stop further execution
	}

	// Calculate BMI
	const bmi = (weight / (height * height)).toFixed(2);

	// Determine health status based on BMI
	let result = `Your BMI is ${bmi}. `;
	if (bmi < 18.5) {
		result += "You are underweight. Consider gaining some weight for better health.";
	} else if (bmi < 24.9) {
		result += "You have a healthy weight. Keep up the good work!";
	} else {
		result += "You are overweight. Regular exercise and a healthy diet are recommended.";
	}

	// Display the result
	document.getElementById('health-result').innerText = result;
});
