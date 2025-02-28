// Login functionality
const adminCredentials = { username: "admin", password: "admin" };
const users = [{ username:username, password: password }];
let chosenPlan = "";

// 30 Workout Plans
const workoutPlans = [
    { name: "Plan 1", description: "Full-body workout" },
    { name: "Plan 2", description: "Strength training" },
    { name: "Plan 3", description: "Cardio blast" },
    { name: "Plan 4", description: "Core workout" },
    { name: "Plan 5", description: "HIIT for fat loss" },
    { name: "Plan 6", description: "Strength and endurance" },
    { name: "Plan 7", description: "Flexibility and mobility" },
    { name: "Plan 8", description: "Lower body blast" },
    { name: "Plan 9", description: "Upper body strength" },
    { name: "Plan 10", description: "Core and stability" },
    { name: "Plan 11", description: "Beginner yoga" },
    { name: "Plan 12", description: "Advanced yoga" },
    { name: "Plan 13", description: "Pilates" },
    { name: "Plan 14", description: "Functional training" },
    { name: "Plan 15", description: "Strength & cardio combo" },
    { name: "Plan 16", description: "Speed and agility" },
    { name: "Plan 17", description: "Flexibility flow" },
    { name: "Plan 18", description: "Explosive power training" },
    { name: "Plan 19", description: "Endurance circuit" },
    { name: "Plan 20", description: "Crossfit fundamentals" },
    { name: "Plan 21", description: "Kickboxing workout" },
    { name: "Plan 22", description: "Athletic conditioning" },
    { name: "Plan 23", description: "Bodyweight challenge" },
    { name: "Plan 24", description: "Total body burnout" },
    { name: "Plan 25", description: "Strength & plyo" },
    { name: "Plan 26", description: "Weightlifting basics" },
    { name: "Plan 27", description: "Running endurance" },
    { name: "Plan 28", description: "Stamina training" },
    { name: "Plan 29", description: "Full body stretch" },
    { name: "Plan 30", description: "Recovery and flexibility" }
];

// Page elements
const loginPage = document.getElementById('login-page');
const welcomePage = document.getElementById('welcome-page');
const adminPage = document.getElementById('admin-page');
const plansPage = document.getElementById('plans-page');
const choosePlanPage = document.getElementById('choose-plan-page');
const trackProgressPage = document.getElementById('track-progress-page');
const healthCheckerPage = document.getElementById('health-checker-page');

// Clear all pages and show only one
function hideAllPages() {
    const pages = [loginPage, welcomePage, adminPage, plansPage, choosePlanPage, trackProgressPage, healthCheckerPage];
    pages.forEach(page => page.style.display = 'none');
}

// Show admin dashboard
function showAdminPage() {
    hideAllPages();
    adminPage.style.display = 'block';
}

// Show welcome page for users
function showWelcomePage() {
    hideAllPages();
    welcomePage.style.display = 'block';
}

// Show workout plans page
document.getElementById('nav-plans').addEventListener('click', function () {
    hideAllPages();
    plansPage.style.display = 'block';
});

// Show choose plan page
document.getElementById('nav-choose-plan').addEventListener('click', function () {
    hideAllPages();
    choosePlanPage.style.display = 'block';
});

// Show track progress page
document.getElementById('nav-track-progress').addEventListener('click', function () {
    hideAllPages();
    trackProgressPage.style.display = 'block';
    document.getElementById('current-plan-name').textContent = chosenPlan || 'None';
});

// Show health checker page
document.getElementById('nav-health-checker').addEventListener('click', function () {
    hideAllPages();
    healthCheckerPage.style.display = 'block';
});

// Back to welcome page
function showWelcomePage() {
    hideAllPages();
    welcomePage.style.display = 'block';
}

// Login handling

    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    if (username === adminCredentials.username && password === adminCredentials.password) {
        showAdminPage();
    } else if (users.some(user => user.username === username && user.password === password)) {
        showWelcomePage();
    } else {
        document.getElementById('login-error').textContent = 'Invalid credentials';
    }


// Populate workout plans
const plansContainer = document.querySelector('.plans-container');
workoutPlans.forEach(plan => {
    const planBox = document.createElement('div');
    planBox.className = 'plan-box';
    planBox.innerHTML = `
        <h3>${plan.name}</h3>
        <p>${plan.description}</p>
    `;
    plansContainer.appendChild(planBox);
});

// Populate choose plan page
const plansList = document.getElementById('plans-list');
workoutPlans.forEach(plan => {
    const planItem = document.createElement('li');
    planItem.textContent = plan.name;
    planItem.addEventListener('click', function () {
        chosenPlan = plan.name;
        alert(`You have chosen: ${plan.name}`);
    });
    plansList.appendChild(planItem);
});

// Update progress
document.getElementById('update-progress').addEventListener('click', function () {
    const progressUpdate = document.getElementById('progress-update').value;
    if (progressUpdate) {
        document.getElementById('motivation-message').textContent = 'Keep it up! You are doing great!';
    }
});


/**
 * 
 */