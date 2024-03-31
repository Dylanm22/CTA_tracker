# CTA Tracker #
  A application that allows users to receive notifications for CTA train arrivals at the brown line station ensuring they stay informed and on schedule.
## Ruby Version

- Ruby version: `3.2.1`
- Rails version: `7.0.4.3`

## Pain Points
Catching the CTA can be troublesome and annoying at times when on a tight schedule.
## User Stories
- As a user, I want to be able to see station informtion
- As a user, I want to be able to save my chosen stations
- As a user, I want to be notified when the train is close to my station so that I will be less likely to be late to catch my train.
- As a user, I want to be notified if the train is going to be delayed so that I can plan accordingly.
## Domain Model

**users**
- id
- name
- email
- passwowrd
- created_at
- updated_at

**stations**

- id
- name
- run_number
- line
- destination
- created_at
- updated_at

**Notification_times**

- id 
- user_id
- time
- recurrence 
- created_at
- updated_at

**favorites**

- id
- user_id
- stations_id
- notification_times_id
- created_at
- updated_at
