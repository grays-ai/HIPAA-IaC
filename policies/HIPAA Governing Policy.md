__Introduction__ 
Within our HIPAA operations document, we will utilize the name GRAYS AI, INC. to denote the legal business entity. Please note that our operational activities are conducted under the trade name Searchable Health, for which we have filed a DBA registration.
Our organization is dedicated to maintaining a secure environment for data and assets. GRAYS AI, INC. places the utmost responsibility to protect Personal Health Information (PHI) through comprehensive administrative, physical, and technical security safeguards.
This document includes but is not limited to policy for frequent vulnerability testing, mitigation strategies for potential threats, data classification policy, change management policy, incident response policy, and sanitation practices. All policies and procedures are readily available, and workforce members and customers receive instruction on our security documentation and where they can find it.

__Designated Personal__
Jonah Kaye is the Chief Security Officer (CSO) of GRAYS AI, INC. 
The CSO is responsible for ensuring the organization's security and privacy, overseeing threat response, and ensuring compliance with data protection regulations. In case of breaches, the CSO leads investigations and response efforts.
The CSO can be reached via phone at (310)-994-1368, and email at jonah.arturo@gmail.com, in the case of an incident (see Incident Response Policy).
The Change Advisory Board (CAB) comprises Jonah Kaye, Winston Guo, and Daniel Buckler
The CAB is responsible for promoting privacy training and awareness among employees to enhance cybersecurity practices. They are also responsible for overseeing changes to the product to ensure security remains a top priority (see Change Management Policy). 

__Reviewing and Updating Policies__
The CBO and CSO review the SRA every quarter to ensure GRAYS AI, INC. remains HIPAA compliant. Our security documentation and policies are updated on a monthly basis or in the event of an operational change or security incident. 
Information systems are reviewed on a monthly basis to assess security settings that can be implemented for safeguarding PHI. All of our company's PHI is hosted on AWS, and we regularly review the AWS Security Bulletin to stay up to date with the latest updates to the security offerings.
https://aws.amazon.com/security/security-bulletins/?card-body.sort-by=item.additionalFields.bulletinId&card-body.sort-order=desc&awsf.bulletins-flag=*all&awsf.bulletins-year=*all 

__Asset Management Policy__
We maintain a detailed inventory of our organization's PHI-containing electronic devices and assets. These assets have been identified, approved, assigned to workforce members, and inventories in the Google Suite in the file called GRAYS AI, INC. Asset Inventory 

__Security Policy__
We conduct a security risk assessment every quarter or in response to operational changes or security incidents. The process involves identifying assets, evaluating data flow, and recognizing internal and external threats. Following this, we will conduct a comprehensive vulnerability assessment (see below) to gauge the efficacy of existing security measures. 

__Vulnerability Scanning__
Our organization follows a comprehensive vulnerability testing policy to safeguard our PHI and maintain a secure AWS environment and Web Application. We conduct one vulnerability test per quarter.
To ensure our AWS Environment is secure we utilize Prowler, an open-sourced vulnerability tool, and AWS Inspector. By combining the capabilities of these tools, we proactively identify and address security weaknesses and ensure that our PHI remains protected against emerging threats. In addition, to our quarterly vulnerability tests, we have enabled Amazon GuardDuty. This always-on tool operates in the background to continuously detect any suspicious or malicious activity within our AWS environment.
Prowler: https://github.com/prowler-cloud/prowler
We use two open-source tools for Web Application vulnerability testing. OWASP ZAP is our primary web app security scanner, identifying SQL injection, XSS, and data exposure. We also employ Nikto to scan web servers for PHI-exposing misconfigurations.
OWASP ZAP (Zed Attack Proxy): https://www.zaproxy.org/
Nikto: https://cirt.net/nikto2
The findings from these tests will be documented in a comprehensive report and shared with the CSO for remediation. A retest will follow to verify the effectiveness of the fixes. 

__Potential: Threats & Vulnerabilities__
1.	Threat: Unauthorized Access / Vulnerability: Weak Access Control
Impact Rating: High Likelihood Rating: Medium
The security measures to prevent weak access controls are the following: mandating quarterly password changes, multi-factor authentication, and role-based access controls to provide access only based on specific roles and responsibilities. Additionally, quarterly access reviews are conducted to ensure permissions are up-to-date and aligned with business requirements.
2.	Threat: Data Breach / Vulnerability: Insecure Data Transmission
Impact Rating: High Likelihood Rating: Medium
Data at rest is safeguarded through encryption using AWS Key Management. To guarantee the safety of data during transfer, AWS Transfer for SFTP is employed. Additionally, our network security is bolstered with Virtual Private Cloud (VPC) to enable network segmentation, restricting access to authorized personnel, and mitigating potential threats.
3.	Threat: Ransomware Attack / Vulnerability: Outdated Software
Impact Rating: High Likelihood Rating: Medium
To prevent ransomware attacks, we will conduct quarterly vulnerability assessments to identify outdated software (see Vulnerability Scanning), automate patching using Amazon EC2 Systems Manager for timely updates and safeguard critical data with backups using Amazon S3.
4.	Threat: Insider Threat / Vulnerability: Lack of User Monitoring and Behavior Analysis
Impact Rating: Medium Likelihood Rating: Low
We will leverage Amazon CloudWatch to capture detailed AWS API call logs and Amazon GuardDuty to continuously monitor for malicious activities, unauthorized behaviors, and anomalies in user activity within our AWS environment.
5.	Threat: Physical Security Breach / Vulnerability: Insufficient Physical Security Controls
Impact Rating: Medium Likelihood Rating: Low
All our data is securely hosted on AWS, benefiting from the robust physical security measures in place, including but not limited to access controls, surveillance, and perimeter security.
6.	Threat: Malware Infection / Vulnerability: Lack of Regular Security Scans and Updates
Impact Rating: Medium Likelihood Rating: Low
We will employ comprehensive quarterly vulnerability scans (see Vulnerability Scanning).
7.	Threat: Social Engineering Attacks / Vulnerability: Lack of Employee Cybersecurity Awareness Training
Impact Rating: High Likelihood Rating: Low
We have a training program twice a year to enhance cybersecurity awareness (see Training Program). Topics include phishing detection, password security, data protection, and safe internet practices.
8.	Threat: Denial of Service (DoS) Attacks / Vulnerability: Inadequate Network Protection Measures
Impact Rating: High Likelihood Rating: Low
We utilize Amazon VPC to create a private network environment within our AWS cloud and encrypt data in transit and at rest. Additionally, our product is hosted on HTTPs which is encrypted. 
9.	Threat: Compromised Third-Party Software / Vulnerability: Inadequate Vendor Security Assessment
Impact Rating: High Likelihood Rating: Medium
Our vendor assessment includes a thorough security documentation review, compliance certification checks, and vendor scorecards to ensure a secure and trusted vendor ecosystem.
10.	Threat: Misconfiguration / Vulnerability: Inadequate Configuration Management Practices
Impact Rating: Medium Likelihood Rating: Low
We leverage AWS Config to assess, audit, and monitor the configurations of your AWS resources.
11.	Threat: Lost or Stolen Devices / Vulnerability: Lack of Device Encryption and Remote Wipe Capabilities
Impact Rating: Medium Likelihood Rating: Medium
All devices have full-disk encryption using FileVault and remote wipe capabilities to prevent unauthorized data access in case of loss or theft. We use Mobile Device Management to centrally enforce encryption and screen lock policies. 
12.	Threat: Insecure APIs / Vulnerability: Lack of Secure Coding Practices
Impact Rating: High Likelihood Rating: Medium
We integrate security testing into the development process and perform dynamic security testing in a production-like environment.
13.	Threat: Data Leakage / Vulnerability: Inadequate Data Loss Prevention (DLP) Measures
Impact Rating: High Likelihood Rating: Medium
We encrypt all data at rest and in transit using AWS Key Management and AWS Transfer for SFTP. Additionally, we employ access controls using AWS Identity and Access Management (IAM), and AWS CloudTrail to monitor data movement.
14.	Threat: Legacy Systems / Vulnerability: Unsupported Systems and Software
Impact Rating: Medium Likelihood Rating: Low
We regularly upgrade and patch software in AWS EC2 using Amazon EC2 Systems Manager for timely security updates. Unsupported systems and software are promptly identified and retired with AWS Config and Amazon Inspector, replacing them with supported alternatives to mitigate security risks. We maintain an accurate inventory of hardware and software to establish a comprehensive decommission plan for end-of-life systems.
15.	Threat: Privilege Escalation / Vulnerability: Poor Privilege Management
Impact Rating: High Likelihood Rating: Low
See the Access Control and Authorization Policy for a detailed breakdown of privilege management. 
16.	Threat: Natural Disasters / Vulnerability: Lack of Disaster Recovery Plan
Impact Rating: High Likelihood Rating: Low
We utilize Amazon S3 and Amazon EBS Snapshots as part of our disaster recovery services. Critical data will be backed up using AWS Backup to safeguard against potential data loss. Additionally, we will implement Amazon Elastic Load Balancer to create redundancy and failover architectures, enabling high availability and minimizing downtime in the event of system failures.
17.	Threat: Failure to Meet Regulatory Requirements / Vulnerability: Lack of Compliance Monitoring
Impact Rating: High Likelihood Rating: Medium
We utilize AWS Config to assess the configuration of AWS resources and to ensure PHI has not been modified or destroyed without authorization. AWS CloudTrail for API activity monitoring, and Amazon GuardDuty to track security threats and compliance issues in our AWS environment. 
18.	Threat: Uncontrolled Asset Use / Vulnerability: Inadequate Asset Tracking
Impact Rating: Medium Likelihood Rating: Medium
We utilize AWS Systems Manager (Inventory) as a centralized asset management system to maintain a comprehensive inventory of all assets. Regular audits are conducted to verify inventory accuracy and promptly address discrepancies.
19.	Threat: Toxic Emissions / Vulnerability: Inadequate Environmental Controls
Impact Rating: Medium Likelihood Rating: Low
Our data is hosted on AWS and benefits from robust physical security measures, including but not limited to strict access controls, surveillance, and monitoring.
20.	Threat: Infrastructure Failure / Vulnerability: Inadequate Infrastructure Maintenance
Impact Rating: High Likelihood Rating: Low
Our data is hosted and backed by AWS, which assumes responsibility for maintaining the foundational infrastructure, encompassing data centers, networking, and hardware. 
21.	Threat: Unspecified Workforce Security Responsibilities / Vulnerability: Lack of Defined Roles and Responsibilities
Impact Rating: Medium Likelihood Rating: Medium
We maintain clear roles with detailed job descriptions and a well-defined organizational structure. Furthermore, we implement strict role-based access controls to ensure that employees are granted access only to the resources and data essential for their respective roles (see Defined Roles and Duties).

__Retention Policy__
All reports of activity in our AWS environment recorded using AWS CloudTrail, Amazon CloudWatch, AWS Config, and AWS Key Management Service Audit will be retained for a minimum of six years.

__Classification Policy__
Tier 1 - Protected: This tier includes all information that is mandated to be protected under a specific compliance regime. It is assumed that any customer information falls into this category. Tier 1 information is considered extremely sensitive and must be safeguarded to protect the privacy of individuals, the security and integrity of systems, to guard against fraud, and to reduce the risk of unauthorized disclosure.

Tier 1 information may include, but is not limited to:
Protected Health Information (PHI) - governed under HIPAA/HITECH
Cardholder Data (CHD) - governed under PCI-DSS/PA-DSS
Social Security Numbers
Bank account or other financial account numbers

Under no circumstances can Tier 1 (Protected) data be stored outside protected environments. When at rest, Tier 1 (Protected) data must be encrypted and, when transmitted across untrusted networks, the transmission must be encrypted. GRAYS AI, INC. makes it a policy not to access customer-protected data unless explicitly allowed by the customer. Under no circumstances can Tier 1 (Protected) information be used in non-production environments.

Access to Tier 1 (Protected) data is limited only to those with a business need. The information in this category must not be stored on any mobile computing device or physical storage device such as a laptop, smartphone, USB drive, flash drive, or any mobile media, regardless of whether the device is owned by GRAYS AI, INC. or personally owned.

Tier 2 - Confidential: This tier includes restricted information that is required to be maintained in a highly confidential manner as directed by the CSO or CAB, applicable law, contractual obligation, or subject to any applicable legal privilege.

Tier 2 information may include, but is not limited to:
Business critical intellectual property, proprietary data, and/or trade secrets
Application source code
Legal contracts
HR records (e.g., background check reports, salary, employment records, etc.)
Non-public tax and accounting data
Passwords, passphrases, and password storage databases
Encryption keys
Network and infrastructure designs
Customer lists and contacts

Access to Tier 2 (Confidential) data is limited to GRAYS AI, INC. employees and third parties operating under an executed non-disclosure agreement. This information should never be stored on a computing device or electronic storage media that is personally owned unless expressly permitted.

Tier 3 - Private: This tier includes "official use only" information about the business and its personnel that can be shared with GRAYS AI, INC. staff, and its authorized partners, but will not be routinely made available to the public without explicit authorization from the CAB.

Tier 3 information may include, but is not limited to:
Operational procedures
Employee benefits "brochure" information
Interpersonal communication (e.g., Slack, Zoom, Google Hangouts)
Business application data that does not fall into Tier 1 or 2 categories
Access to this information is limited to GRAYS AI, INC. employees or third parties operating under an executed non-disclosure agreement. This information should never be stored on a computing device or electronic storage media that is personally owned.

Tier 4 - Public: This tier includes data and information that are considered to freely exist in the public domain and contain no information from Tier 1, 2, or 3.

__Application Classification__
Application classification follows the type of information that the application handles (stores, processes, or transmits). If an application handles Tier 1 (Protected) data, then the application is considered a Tier 1 (Protected) application.

__Change Management Policy__
GRAYS AI, INC.’s goal is to make all reasonable attempts to maintain the confidentiality and integrity of its production systems when changing, updating, or otherwise introducing new technologies into the production environment. All records of major feature changes shall be stored for 6 years in the following file: GRAYS AI, INC. Product Change Log. This file will be maintained and backed up consistently.
The CAB team will review changes, approve them where required (or not), and review emergency changes after the emergency has been resolved.
Three categories of change:
A Standard Change: A low-risk configuration change or update that has little or no chance of affecting the availability of systems. These changes do not require approval by the CAB before execution. Standard changes do need to be reviewed by a qualified individual, to confirm that the change is, in fact, a routine and low-risk change. These changes require some planning for how the change will be deployed, who is performing the change, quality assurance testing, & a rollback plan.
A Controlled Change: A change that might require downtime or affect the stability of systems. These changes have either higher risk or difficult to define risks associated with them and as a result, require review and approval from the CAB. These changes also require a declared maintenance window that is communicated with customers in advance of the change. Controlled changes require extensive quality assurance testing, appropriate staffing during the change, documented test plan to ensure that the change was successful, and a complete rollback plan to follow in the event the change needs to be reverted.
An Emergency Change: A change that is the result of an outage or failure. These changes are intended to return production environments to a working state. These changes shall be applied as quickly as possible. They require that after the environment is stable and returned to normal function a Root Cause Analysis is performed that documents the cause of the emergency, the nature of the fix, the extent of damage or loss, the individuals involved in the change, and measures taken to ensure that the issue does not happen again. The CSO leads the analysis and ensures that the documentation is sufficient and communicated to the appropriate parties. All Root Case Analysis will be performed and stored in the following for at least 6 years: GRAYS AI, INC. Root Cause Analysis. This file will be maintained and backed up consistently.

__Incident Response Policy__
GRAYS AI, INC. has implemented a security incident response plan to provide an effective approach to managing incidents (security-related and otherwise). The plan was developed to meet compliance obligations and includes the following steps:
*	Effectively and quickly identify the nature of the incident, its scope, and severity.
*	Identify a single point of coordination and communication.
*	Establish the criteria for the recognition of a potential security breach and document the requirements for reporting the breach.
*	Establish the criteria for the declaration of a disaster and the subsequent invocation of the Disaster Recovery and Business Continuity Plan.
*	Ensure that all employees and contractors are aware of their obligations to recognize and report potential incidents, and the sanctions if these instructions are not followed.
*	Identify the specific individuals that need to be contacted in the event of an incident. This includes internal as well as external entities.
*	Identify all employees involved in the incident.
*	Testing the plan at least annually, or if the plan changes and using the results of the test (and lessons learned from any actual incident response events) to improve the plan.
Potential Emergencies Include
1.	Cyberattacks and Security Breaches:
*	Ransomware Attacks: Malicious software to encrypt or steal sensitive data, preventing access to critical systems until a ransom is paid.
*	Distributed Denial of Service (DDoS) Attacks: Overwhelm networks and servers, causing downtime and inaccessibility.
*	Data Breaches: Unauthorized access to PHI 
2.	Hardware or Software Failures:
*	Server Failures: Malfunctions or hardware breakdowns in servers hosting PHI.
*	Data Storage Failures: Disk failures leading to data loss.
*	Software Errors: Bugs or glitches that disrupt system functionality.
3.	Human Errors:
*	Accidental Data Deletion: Mistakenly deleting critical information.
*	Misconfiguration: Improperly configuring systems leads to vulnerabilities.
4.	Infrastructure Failures:
*	Internet Service Provider (ISP) Outages: Interruptions in internet connectivity can hinder access to cloud-based services and data.

__Breach Notification__
In the event of a breach, whoever discovers the breach will immediately notify the CSO. Subsequently, the CSO will inform the person or persons responsible for addressing threats, providing both verbal and written communication regarding the nature of the vulnerability and the corrective action plan. Individuals who are responsible for responding to incidents have been trained on their role and responsibilities upon hire and quarterly. 
To facilitate breach notification in case of unauthorized PHI access, acquisition, use, or disclosure, we will adhere to the American Recovery and Reinvestment Act (ARRA)/Health Information Technology for Economic and Clinical Health Act (HITECH) and relevant federal or state notification laws.
The Federal Trade Commission (FTC) has published breach notification rules for vendors of personal health records as required by ARRA/HITECH. The FTC rule applies to entities not covered by HIPAA, primarily vendors of personal health records. The rule is effective September 24, 2009, with full compliance required by February 22, 2010.
The American Recovery and Reinvestment Act of 2009 (ARRA) was signed into law on February 17, 2009. Title XIII of ARRA is the Health Information Technology for Economic and Clinical Health Act (HITECH). HITECH significantly impacts the Health Insurance Portability and Accountability (HIPAA) Privacy and Security Rules. While HIPAA did not require notification when patient-protected health information (PHI) was inappropriately disclosed, covered entities and business associates may have chosen to include notification as part of the mitigation process. HITECH does require notification of certain breaches of unsecured PHI to the following: individuals, the Department of Health, and Human Services (HHS), and the media. The effective implementation of this provision is September 23, 2009 (pending publication of HHS regulations).

__Breach Policy__
This policy is reviewed, tested, and evaluated quarterly, or in response to operational changes or security incidents. 
Discovery of Breach: A breach of PHI shall be treated as "discovered" as of the first day on which such breach is known to the organization (includes breaches by the organization's Customers, Partners, or subcontractors). Following the discovery of a potential breach, the organization shall begin an investigation immediately, conduct a risk assessment, and based on the results of the risk assessment, begin the process to notify each Customer affected by the breach. GRAYS AI, INC. shall also begin the process of determining what external notifications are required or should be made (e.g., Secretary of the Department of Health & Human Services (HHS), law enforcement officials, etc.)
Breach Investigation: The GRAYS AI, INC. CSO shall name an individual to act as the investigator of the breach. The investigator shall be responsible for the management of the breach investigation, completion of a risk assessment, and coordination with others in the organization as appropriate. All documentation related to the breach investigation, including the risk assessment, shall be retained for a minimum of six years.
Risk Assessment: For an acquisition, access, or disclosure of PHI to constitute a breach, it must constitute a violation of the HIPAA Privacy Rule. To determine if an impermissible use or disclosure of PHI constitutes a breach and requires further notification, GRAY AI, INC. will perform a risk assessment to determine if there is a significant risk of harm to the individual as a result of impermissible use or disclosure. GRAYS AI, INC. shall document the risk assessment as part of the investigation in the incident report form noting the outcome of the risk assessment process. GRAYS AI INC. has the burden of proof for demonstrating that all notifications to appropriate Customers or that the use or disclosure did not constitute a breach. Based on the outcome of the risk assessment, the organization will determine the need to move forward with breach notification. 

The risk assessment and the supporting documentation shall be fact-specific and address: 
*	Consideration of who impermissibly used or to whom the information was impermissibly disclosed
*	The type and amount of PHI involved
*	The cause of the breach 
*	The entity responsible for the breach, either Customer, GRAYS AI, INC., or Partner
*	The potential for significant risk of financial, reputational, or other harm
Timeliness of Notification: Upon discovery of a breach, notice shall be made to the affected GRAYS AI, INC. Customers no later than 24 hours after the discovery of the breach. It is the responsibility of the organization to demonstrate that all notifications were made as required, including evidence demonstrating the necessity of delay.
Delay of Notification Authorized for Law Enforcement Purposes: If a law enforcement official states to GRAYS AI, INC. that a notification, notice, or posting would impede a criminal investigation or cause damage to national security, the organization shall:

If the statement is in writing and specifies the time for which a delay is required, delay such notification, notice, or posting of the timer period specified by the official; or If the statement is made orally, document the statement, including the identity of the official making the statement, and delay the notification, notice, or posting temporarily and no longer than 30 days from the date of the oral statement, unless a written statement as described above is submitted during that time.
Content of the Notice: The notice shall be written in plain language and must contain the following information:
*	A brief description of what happened, including the date of the breach and the date of the discovery of the breach, if known;
*	A description of the types of unsecured protected health information that were involved in the breach (such as whether full name, date of birth, home address, account number, diagnosis, and other types of information were involved), if known;
*	Next steps the Customer should take to protect Customer data from potential harm resulting from the breach.
*	A brief description of what GRAYS AI, INC. is doing to investigate the breach, mitigate harm to individuals and Customers, and protect against further breaches.
*	Contact procedures for individuals to ask questions or learn additional information, which may include a toll-free telephone number or an e-mail address
*	Methods of Notification: GRAYS AI, INC. Customers will be notified via email and phone within the timeframe for reporting breaches, as outlined above.

Breach Accounting and Additional Considerations
The following applies to all breaches, regardless of the type of information involved in the breach. Maintenance of Breach Information/Log: As described above and in addition to the reports created for each incident, GRAYS AI, INC. shall maintain a process to record or log all breaches regardless of the number of records and Customers affected. The following information should be collected/logged for each breach:
*	A description of what happened, including the date of the breach, the date of the discovery of the breach, and the number of records and Customers affected, if known.
*	A description of the types of unsecured protected health information that were involved in the breach (such as full name, date of birth, home address, account number, etc.), if known.
*	A description of the action taken about notification of patients regarding the breach.
*	Resolution steps that were taken to mitigate the breach and prevent future occurrences.
*	Workforce Training: GRAYS AI, INC. shall train all members of its workforce on the policies and procedures concerning personal information (including PHI) as necessary and appropriate for the members to carry out their job responsibilities. Workforce members shall also be trained to identify and report breaches within the organization.
*	Complaints: GRAYS AI, INC. must provide a process for individuals to make complaints concerning the organization's patient privacy policies and procedures or its compliance with such policies and procedures.
*	Sanctions: The organization shall have in place and apply appropriate sanctions against members of its workforce, Customers, and Partners who fail to comply with the privacy policies and procedures. If members of the workforce do not follow procedures and policies, they are subject to immediate dismissal and potential legal consequences.

__Platform Customer Responsibilities__
The GRAYS AI, INC. customer that maintains, retains, modifies, stores, or otherwise holds, uses, or discloses unsecured PHI shall, without unreasonable delay and in no case later than 60 calendar days after discovery of a breach, notify GRAYS AI, INC. of such breach. 

The Customer shall provide GRAYS AI, INC. with the following information:
*	A description of what happened, including the date of the breach, the date of the discovery of the breach, and the number of records and Customers affected, if known.
*	A description of the types of unsecured protected health information that were involved in the breach (such as full name, date of birth, home address, account number, etc.), if known.
*	A description of the action taken concerning notification of patients regarding the breach.
*	Resolution steps that were taken to mitigate the breach and prevent future occurrences.
*	Notice to Secretary of Department of Health and Human Services (HHS): GRAYS AI, INC. Customers are responsible for providing notice to the Secretary of HHS at the Customer's discretion.

__Business Associate Agreement (BAA) Policy__
Before engaging with third-party vendors or business associates with access to PHI, we assess the need for a BAA. If deemed necessary, we draft a comprehensive BAA outlining responsibilities, data security, breach notification, and compliance. The BAA limits access to minimum necessary PHI and undergoes review and approval by legal counsel and compliance officers. We record the devices or mechanisms used for access, and our ability to control and monitor third-party access. Once finalized, it is executed by both parties and retained securely. 
We keep an up-to-date list of all business associates accessing PHI, and we have BAAs on file for each of them. It is our policy to obtain BAAs from all business associates who access another covered entity's electronic PHI on our behalf. Our BAA is compliant with the Omnibus Rule updates to HIPAA, and we perform periodic reviews to ensure ongoing compliance. 
Our BAAs include language describing how security-relevant changes should be communicated to our organization. Our Business Associate Agreements include specifications on the authorized use and disclosure of PHI for both our third-party vendors and their subcontractors. Our BAAs describe requirements to provide satisfactory assurances for the protection of PHI, obtain the same assurances from its subcontractors, and report security incidents (experienced by the Business Associate or its subcontractors) promptly. This policy ensures the safeguarding of PHI and adherence to regulatory standards in all business relationships.

__Physical Security Policy__
All workforce members are routinely reminded that it is their responsibility to report an incident of unauthorized access to covered data to the CSO. Any surplus equipment must be stored securely while not in use and disposed of when no longer required. Workforce members must report a lost and/or stolen key(s) to the CSO.

__Rules Governing Daily Computer Use__
*	You must maintain a clean desk: Put everything in a secure zone when you walk away.
*	You must protect displays of PHI and sensitive data: Position your computer so no one can walk up behind you and observe what you're doing.
*	You must physically secure your computer: always lock your computer when you walk away from it. As well, you must set up a screen saver that locks your computer after fifteen minutes.

Computer Setup
*	Encryption of the full disk in your hard drive. 
*	All company communication must take place over Gmail as this email service is encrypted 
*	No company files that are tier 1, 2, or 3 can be stored on personal or thumb drives 
*	When encryption is not possible, must follow the below instructions: 
1)	Turn on host-based firewalls.
2)	Turn off remote access.
3)	Install anti-virus, anti-malware, and anti-spyware software: ideally, set scans to be performed "on the fly," at startup, and on a schedule.
*	Set the screen saver to start after 15 minutes (this is required by standards such as PCI; note that CMS requires the screensaver to be triggered after 2 minutes). When the screen saver is triggered, ensure that a password is required to access the system. 
*	Know how to control (turn on/turn off/enable/disable) Java, JavaScript, ActiveX, PDFs, postscript, Shockwave, and Flash, both on the computer and in the browser.
*	Install LastPass.
*	The behavior of your anti-virus, -malware, -spyware scanning should be available for audit.
*	Your anti-virus software should be regularly updated.
*	Any company documents will be generated and stored in G Suite.
*	You must track maintenance: Use the file in Google drive Called GRAYS AI, INC. Facility Maintenance Records 

Do not do the following:
*	Do not install any office software (Microsoft Word, Excel, PowerPoint, Apple Pages, Keynote).
*	Do not install backup software since everything will be in G Suite, an encrypted file storage service.

__Sanitary Disposal__
We prioritize safeguarding sensitive information by backing up and wiping all data before disposing of devices. SIM cards and memory cards are removed, and accounts are signed out to prevent unauthorized access. For the utmost security, devices undergo physical destruction.

__Third-Party Terminating Policy__
We have a clear policy for terminating or modifying third-party access. Prompt communication is initiated with third parties, and on the specified date, we swiftly revoke or adjust access points. Data is securely backed up and transferred if needed. Regular monitoring and compliance reviews ensure adherence to our policy.

__Sanitation Policy for Re-Use__
We implement a comprehensive process to completely purge data from all devices before reuse. This procedure includes device reimaging, degaussing, or other industry-standard methods that comply with the guidelines outlined in NIST SP 800-88 and OCR Guidance to Render Unsecured Protected Health Information Unusable, Unreadable, or Indecipherable to Unauthorized Individuals.





