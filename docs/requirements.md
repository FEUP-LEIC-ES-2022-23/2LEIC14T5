
# Requirements

## User stories
### Story nº 1
As a user, I want to search for a specific job offer, without having to scroll through all the ads, so that I can find the job I want faster.

### User interface mockup
![Search png](https://user-images.githubusercontent.com/113979321/223869383-75154e89-c0a4-434c-9b77-49cf07365ff2.png)

### Acceptance test

### Value and effort estimation
- Value: Must-have
- Effort: 5

---

### Story nº 2
As a user, I want to see the reviews and/or opinions on a certain job offer, so that I can have a better idea of what the job is like.

### User interface mockup
![Reviews png (2)](https://user-images.githubusercontent.com/113979321/223873246-7259614b-3029-4e5e-8978-56b1f0723dc3.png)

### Acceptance test

### Value and effort estimation
- Value: Should-have
- Effort: 8

---

### Story nº 3
As a user, I want to be able to filter the job offers by different criteria, not only to that my search is easier and also to find the job I want faster, but also to compare the different job offers.

### User interface mockup
![Filter png](https://user-images.githubusercontent.com/113979321/223870114-433fb14e-29c5-4b66-a5ae-0e3529ff408b.png)

### Acceptance test

### Value and effort estimation
Value: Must-have
Effort: 8

---

### Story nº 4
As a user, I want to have easy and interactive access to job offers in different locations, so that I can find a job in a place that I prefer.

### User interface mockup
![principal png](https://user-images.githubusercontent.com/113979321/223876487-42e034ea-06df-4224-9ef6-a50b181a8726.png)

### Acceptance test

### Value and effort estimation
Value: Must-have
Effort: 8

---

### Story nº 5
As a user, I want to be able to mark a job offer as favorite, so that I can easily find it later.

### User interface mockup
![Favorite Search png](https://user-images.githubusercontent.com/113979321/223871250-0ad0fa6c-c05e-4220-a2a9-1e6848e6a3bc.png)

### Acceptance test

### Value and effort estimation
Value: Should-have
Effort: 5

---

### Story nº 6
As a user, I want to be able to see the job offers that I have marked as favorite, so that I can easily find them later.

### User interface mockup
![Favorites png](https://user-images.githubusercontent.com/113979321/223872374-3722889a-731b-438c-8b80-368fc3bb67bd.png)

### Acceptance test

### Value and effort estimation
Value: Must-have
Effort: 5

---

### Story nº 7
As a user, I want to be able to rate and review a job offer, so that I can give my opinion on the job.
### User interface mockup
![Rate review png](https://user-images.githubusercontent.com/113979321/223874166-f8bbdaf8-db18-482b-b625-fea630b01b12.png)

### Acceptance test

### Value and effort estimation
- Value: Should-have
- Effort: 8

---

### Story nº 8
As a user, I want to see detailed information about a job offer, so that I can have a better idea of what the job is like.

### User interface mockup
![Specific job png](https://user-images.githubusercontent.com/113979321/223875276-a81be2fb-e670-4ce8-abc3-4b79b4104fc9.png)

### Acceptance test

### Value and effort estimation
Value: Must-have
Effort: 5

---
<br>

## Domain Model
 <p align="center" justify="center">
  <img src="../images/domain_model.png" alt="Domain Model">
</p>
<p align="center" justify="center">
  <b>Figure 1:</b> Domain model of the FilterIT application
</p>
<br>
The domain model of the FilterIT application is shown in Figure 1. The domain model is composed of the following entities:

- **User**: A user is a person that uses the application. A user can not only be a newly formed IT worker, but also a senior worker looking for a new workplace. 
- **Ad**: An ad is a job offer. It contains information about job, like the company, the job position, the salary, the location, requirements for the job and others.
- **Review**: A review is a feedback from a user about a job offer. It contains ia rating and an optional text review.
- **Favorite**: A favorite is a job offer that a user has marked as favorite. A user can have multiple favorites.