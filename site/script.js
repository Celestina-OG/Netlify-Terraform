document.addEventListener('DOMContentLoaded', function() {
  
    // const deploymentId = Math.random().toString(36).substring(2, 15);
    const deploymentId = window.DEPLOYMENT_ID;
    document.getElementById('deployment-id').textContent = deploymentId;
    
   
    const titles = [
        'Welcome to Hug Ibadan!',
        'Infrastructure as Code in Action!',
        'Deployed with Terraform!',
        'Join the Hug Ibadan Community!',
    ];
    
    let titleIndex = 0;
    const titleElement = document.getElementById('dynamic-title');
    
    setInterval(() => {
        titleIndex = (titleIndex + 1) % titles.length;
        titleElement.textContent = titles[titleIndex];
    }, 3000);
});