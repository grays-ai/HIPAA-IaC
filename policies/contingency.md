---
title: "Contingency Policy"
metaDescription: "The goal of this policy is to guide and direct our trusted security backup in the event of a contingent event "
date: 2023-06-07 12:42:34
slug: roles
---

### Trusted Security Backup

**Maximilian Marcus**
`max_marcus@me.com`

A Trusted Security Backup in a HIPAA compliant organization is a reliable, trusted individual, ready to step in during emergencies, uphold the highest levels of discretion, and bound by a non-disclosure agreement to maintain the privacy and security of patient health information.

* This individual must have a lifestyle that does not tolerate any form of substance abuse or activities that could lead to blackmail, which may potentially compromise the security of the organization.
* Ideally, they would already be involved in the healthcare sector, potentially a doctor or other healthcare professional, as familiarity with the industry's requirements and nuances would be beneficial.

### Contingency Operation

Objective: This policy provides guidelines for the Trusted Security Backup in case of an emergency where the primary security officer is unavailable and immediate action is required to protect and secure sensitive information stored on our AWS (Amazon Web Services) servers.

Scope: This policy applies to the Trusted Security Backup individual, and outlines the steps required to securely access and delete all data from AWS buckets via the console.

Procedure:

* Security Assessment: Evaluate the nature of the emergency and the potential risk it poses to our sensitive data stored in the AWS buckets. If immediate action is required, proceed to the next steps. If not, consult with senior management or other trusted advisors as necessary.
* Accessing LastPass: Utilize the physically secured master password copy to gain access to LastPass, the secure password manager where our AWS credentials are stored. This master password copy should be stored in a secure, but accessible location, known only to the Trusted Security Backup and a select few within the organization.
* Retrieving AWS Credentials: Navigate to the AWS password stored within LastPass and securely note down the details necessary for accessing the AWS console.
* Logging into AWS Console: Use the retrieved AWS credentials to log into the AWS Console. Be sure to use a secure and private internet connection to prevent any potential interception of login information.
* Data Deletion: Navigate to the AWS S3 service where our data buckets are located. Carefully select all patient data buckets, then proceed to delete all the data they contain. Also navigate to our AWS RDS service, and delete all tables with patient data as well. Be absolutely sure about which data needs to be deleted to avoid unnecessary loss of information. 
* Confirmation of Deletion: After deletion, ensure that no recoverable data remains in the buckets. AWS may retain deleted data for a short period; you should wait until this period passes and verify the data is completely deleted.
* Notification: Once the data deletion process is completed, immediately notify the appropriate personnel or departments about the actions taken, including senior management, IT, and legal department if necessary.
* Documentation: Document all actions taken during this process, including the reasons for implementing this policy and details of the data deletion process. This documentation may be necessary for audit, legal, or regulatory purposes.
* Follow-up Actions: Depending on the nature of the emergency, additional actions may be required. This might include notifying affected individuals, reporting to regulatory authorities, implementing additional security measures, or other actions as advised by legal counsel or senior management.
* Password Reset: Once the emergency is resolved, ensure that the AWS password is changed and updated in the LastPass manager to maintain the integrity of our security measures.