document.addEventListener('DOMContentLoaded', () => {
    console.log('Frontend loaded successfully!');
    // Example: Fetch data from backend API
    fetch('/api/data')
        .then(response => response.json())
        .then(data => {
            console.log(data);
            // Update the UI with backend data
        })
        .catch(error => console.error('Error fetching data:', error));
});
