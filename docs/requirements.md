
# Requirements

## User stories
### Story nº 1
As a user, I want to search for a specific job offer, without having to scroll through all the ads, so that I can find the job I want faster.

### User interface mockup
![Search java png](https://user-images.githubusercontent.com/113979321/224019759-2fe244af-46fe-4ee3-a018-cf15af3a58c4.png)

### Acceptance tests
```Gherkin
Scenario: Search for Java Developer jobs.
  Given The search screen
  When I tap the search bar
  And I insert "Java Developer"
  And I tap the search button,
  Then the results of the search for "Java Developer" appear
```

### Value and effort estimation
- Value: Must-have
- Effort: 8

---

### Story nº 2
As a user, I want to see the reviews and/or opinions on a certain job offer, so that I can have a better idea of what the job is like.

### User interface mockup
![Reviews png (2)](https://user-images.githubusercontent.com/113979321/223873246-7259614b-3029-4e5e-8978-56b1f0723dc3.png)

### Acceptance tests
```Gherkin
Scenario: See the reviews about a job offer.
  Given The post of a job offer
  When I tap "Reviews",
  Then the reviews about the job offer appear
```

### Value and effort estimation
- Value: Should-have
- Effort: 8

---

### Story nº 3
As a user, I want to be able to filter job offers by different criteria, not only to make my search easier and also to find the job I want faster, but also to compare different job offers.

### User interface mockup
![Filter png](https://user-images.githubusercontent.com/113979321/223870114-433fb14e-29c5-4b66-a5ae-0e3529ff408b.png)

### Acceptance tests
```Gherkin
Scenario: Filter the search.
  Given The search screen
  When I tap the filters button
  And I select the criteria I want to filter by
  And I tap "Search",
  Then the results of the search for appear filtered by the criteria I selected
```

### Value and effort estimation
- Value: Must-have
- Effort: 13

---

### Story nº 4
As a user, I want to have easy and interactive access to job offers in different locations, so that I can find a job in a place that I prefer.

### User interface mockup
![principal png](https://user-images.githubusercontent.com/113979321/223876487-42e034ea-06df-4224-9ef6-a50b181a8726.png)

### Acceptance tests
```Gherkin
Scenario: See the job offers in Porto.
  Given The main screen
  When I tap "Porto",
  Then the job offers in Porto district appear
```

### Value and effort estimation
- Value: Must-have
- Effort: 8

---

### Story nº 5
As a user, I want to be able to mark a job offer as favorite, so that I can easily find it later.

### User interface mockup
![Favorite Search png](https://user-images.githubusercontent.com/113979321/223871250-0ad0fa6c-c05e-4220-a2a9-1e6848e6a3bc.png)

### Acceptance tests
```Gherkin
Scenario: Mark a job offer as favorite.
  Given The post of a job offer
  When I tap the favorite button,
  Then the job offer is marked as favorite
```

### Value and effort estimation
- Value: Should-have
- Effort: 5

---

### Story nº 6
As a user, I want to be able to see the job offers that I have marked as favorite, so that I can easily find them later.

### User interface mockup
![Favorites png](https://user-images.githubusercontent.com/113979321/223872374-3722889a-731b-438c-8b80-368fc3bb67bd.png)

### Acceptance tests
```Gherkin
Scenario: See the job offers that I have marked as favorite.
  Given The navigation drawer
  When I tap "Favorites",
  Then the job offers that I have marked as favorite appear
```

### Value and effort estimation
- Value: Must-have
- Effort: 5

---

### Story nº 7
As a user, I want to be able to rate and review a job offer, so that I can give my opinion on the job.
### User interface mockup
![Rate review png](https://user-images.githubusercontent.com/113979321/223874166-f8bbdaf8-db18-482b-b625-fea630b01b12.png)

### Acceptance tests
```Gherkin
Scenario: Rate a job offer.
  Given The job offer post
  When I tap "See more"
  And I tap the star
  And I select the rate
  And I tap the send button,
  Then my review appears
```

### Value and effort estimation
- Value: Should-have
- Effort: 8

---

### Story nº 8
As a user, I want to see detailed information about a job offer, so that I can have a better idea of what the job is like.

### User interface mockup
![Specific job png](https://user-images.githubusercontent.com/113979321/223875276-a81be2fb-e670-4ce8-abc3-4b79b4104fc9.png)

### Acceptance tests
```Gherkin
Scenario: See the details of a job offer.
  Given The search screen
  When I tap a job offer,
  Then the details of the job offer appear
```

### Value and effort estimation
- Value: Must-have
- Effort: 5

---

### Story nº 9
As a user, I want to be able to navigate easily through the app pages.

### User interface mockup
![bar search png](https://user-images.githubusercontent.com/113979321/224378031-0c5fbe72-1482-47f5-b048-82ee230c0d56.png)

### Acceptance tests
```Gherkin
Scenario: Switch pages.
  Given any page
  When I tap the top left corner button
  And the navigation drawer opens,
  Then I can select which page to navigate to
```

### Value and effort estimation
- Value: Must-have
- Effort: 5

---

### Story nº 10
As a user, I want to see the reviews and/or opinions on a certain job offer, so that I can have a better idea of what the job is like.

### User interface mockup
![image 10](https://user-images.githubusercontent.com/113979321/227980436-3b20f6a9-8d5b-40c9-b771-f71a3e7360e0.png)

### Acceptance tests
```Gherkin
Scenario: See reviews of a job post.
  Given The job offer post
  When I tap "See more"
  Then the job offer's reviews appears
```

### Value and effort estimation
- Value: Must-have
- Effort: 5

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
