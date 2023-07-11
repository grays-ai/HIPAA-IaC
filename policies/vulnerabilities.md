---
title: "Compliance Policies"
metaDescription: "The goal of this policy is to guide and direct GRAYS AI, INC. employees and collaborators on how to defend its assets against internal, external, deliberate, or accidental threats and vulnerabilities."
requirements: "HIPAA: §164.308(a)(1)(ii)(A), NIST CSF: ID.RA, ID.AM, ID.BE, PR.DS, PR. IP, RS.MI , HICP: TV1, Practice # 4, 5, 9"
date: 2023-06-11 12:42:34
slug: policies
---

### Access Management Policy

Applicable Standards from the HITRUST Common Security Framework:

* 01.b User Registration
* 01.c Privilege Management
* 01.e Review of User Access Rights
* 01.j User Authentication for External Connections
* 01.n Network Connection Control
* 01.q User Identification and Authentication
* 01.v Information Access Restriction
* 02.i Removal of Access Rights
* 05.i Identification of Risks Related to External Parties
* 06.e Prevention of Misuse of Information Assets
* 08.j Equipment Maintenance
* 09.c Segregation of Duties
* 09.m Network Controls
* 09.s Information Exchange Policies and Procedures
* 09.v Electronic Messaging

## Asset Management Policy

Applicable Standards from the HITRUST Common Security Framework:

* 07.a Inventory of Assets

## Auditing, Logging, and Monitoring Policy

Applicable Standards from the HITRUST Common Security Framework:

* 01.v Information Access Restriction
* 06.e Prevention of Misuse of Information Assets
* 06.g Compliance with Security Policies and Standards
* 09.aa Audit Logging
* 09.ab Monitoring System Use
* 09.ad Administrator and Operator Logs
* 09.j Controls Against Malicious Code

### Change Management Policy

It is GRAYS AI, INC.’s goal to make all reasonable attempts to maintain the confidentiality, integrity, and availability of its production systems when changing, updating, or otherwise introducing new technologies into the production environment. All records of major feature changes shall be stored for 6 years in the following file in the G Suite: **GRAYS AI, INC. Product Change Log**. 

A designated team of people within GRAYS AI, INC. comprises the Change Advisory Board (CAB). This team will review changes, approve them where required (or not), and review emergency changes after the emergency has been resolved. 

Three categories of change: 

A Standard Change: A low-risk configuration change or update that has little or no chance to affect the availability of systems. These changes do not require approval by the CAB before execution. Standard changes do need to be reviewed by a qualified individual, such as the relevant department head, to confirm that the change is, in fact, a routine and low-risk change. These changes require some planning for how the change will be deployed, who is performing the change, QA testing, & a rollback plan. 

Controlled Change: A change that might require downtime or might affect the stability of systems. These changes have either higher risk or difficult to define risks associated with them and as a result, require review and approval from the CAB. These changes also require a declared maintenance window that is communicated with customers in advance of the change. Controlled changes require extensive QA testing, appropriate staffing during the change, documented test plan to ensure that the change was successful, and a complete rollback plan to follow in the event the change needs to be reverted.

An **Emergency Change**: A change that is the result of an outage or failure. These changes are intended to return production environments to a working state. These changes shall be applied as quickly as prudently possible. They require that after the environment is stable and returned to normal function a Root Cause Analysis be performed that documents the cause of the emergency, the nature of the fix, the extent of damage or loss, the individuals involved in the change, and measures taken to ensure that the issue does not happen again. All Root Case Analysis will be performed and stored in the following file in the G Suite: **GRAYS AI, INC. Root Cause Analysis**. The CAB leads the analysis and ensures that the documentation is sufficient and communicated to the appropriate parties.  

Applicable Standards from the HITRUST Common Security Framework:

* 09.b Change Management
* 09.m Network Controls
* 10.h Control of Operational Software
* 10.k Change Control Procedures

### Classification Policy

Information Classification

The minimum classification of an information store, application, or system is inheritable. For example, an application that stores, processes, or transmits Tier 1 (Protected) data is automatically considered a Tier 1 (Protected) application.

**Tier 1 - Protected:** This tier includes all information that is mandated to be protected under a specific compliance regime. It is assumed that any customer information store falls into this category. Tier 1 information is considered extremely sensitive and must be safeguarded to protect the privacy of individuals, the security and integrity of systems, to guard against fraud, and to reduce the risk of unauthorized disclosure. 

Tier 1 information may include, but is not limited to:
* Protected Health Information (PHI) - governed under HIPAA/HITECH
* Cardholder Data (CHD) - governed under PCI-DSS/PA-DSS
* Social Security Numbers
* Bank account or other financial account numbers
* Clear-text passwords, passphrases, PINs, security, and access codes

Under no circumstances can Tier 1 (Protected) data be stored outside protected environments. When at rest, Tier 1 (Protected) data must be encrypted and, when transmitted across untrusted networks, the transmission must be encrypted. GRAYS AI, INC. makes it a matter of policy to not access customer-protected data stores unless explicitly allowed by the customer. Under no circumstances can Tier 1 (Protected) information be used in non-production environments.

Access to Tier 1 (Protected) data is limited only to those with a business need. Access must be authenticated using two-factor authentication mechanisms. The information in this category must not be stored on any mobile computing device or physical storage device such as a laptop, smartphone, PDA, USB drive, flash drive, or any mobile media, regardless of whether the device is owned by GRAYS AI, INC. or personally owned.

See the System Security Policy, Data Integrity Policy, and Encryption Standard for a detailed enumeration of the controls necessary to protect Tier 1 (Protected) data at rest and in transit.

**Tier 2 - Confidential:** This tier includes restricted information that is required to be maintained in a highly confidential manner as directed by GRAYS AI, INC. Privacy Officer, applicable law or regulation, contractual obligation, or subject to any applicable legal privilege or protection. 

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

See the System Security Policy, Data Integrity Policy, and Encryption Standard for a detailed enumeration of the controls necessary to protect Tier 2 (Confidential) data at rest and in transit.

**Tier 3 - Private:** This tier includes "official use only" information about the business and its personnel that can be shared with GRAYS AI, INC. staff, and its authorized partners, but will not be routinely made available to the public without explicit authorization from the Privacy Officer. 

Tier 3 information may include, but is not limited to: 
Operational procedures
Employee benefits "brochure" information
Business application data that does not fall into Tier 1 or 2 categories
Email that does not contain Tier 1 or 2 information
Interpersonal communication (e.g., Slack, Zoom, Google Hangouts)

Access to this information is limited to GRAYS AI, INC. employees or third parties operating under an executed non-disclosure agreement. This information should never be stored on a computing device or electronic storage media that is personally owned.

**Tier 4 - Public:** This tier includes data and information that are considered to freely exist in the public domain and contain no information from Tier 1, 2, or 3.

Application Classification

Application classification follows the type of information that the application handles (stores, processes, or transmits). If an application handles Tier 1 (Protected) data, then the application is considered a Tier 1 (Protected) application.

Tier 1 - Protected
Any application that is involved with the storage, processing, or transmission of Tier 1 data is considered a Tier 1 (Protected) application.
Tier 2 - Confidential
Any application that stores, processes, or transmits Tier 2 (Confidential) information is considered a Tier 2 (Confidential) application.
Tier 3 - Private
Any application that stores, processes, or transmits Tier 3 (Private) information is considered a Tier 3 (Private) application.
Tier 4 - Common Tools and Applications
Tier 4 applications represent tools that are commonly installed with most modern operating systems (SSH, Internet browser and plugins, SFTP client, password safes, etc.) and which might be used to work with higher Tier information, but only as a way to administer or consume the information. Many of the standards (or the Acceptable Use Policy) will outline specific configuration and usage restrictions for the use of these common tools.

System Classification

A "System" can be a range of technology mechanisms that perform a discrete function or service. A System may be a single process running in a container or VM, or a set of processes spanning multiple containers and/or VMs.

Tier 1 - Production - Customer Facing
Systems that host customer containers or services or which directly affect or have an impact on the information security (e.g., confidentiality, availability, integrity) or compliance posture of those containers or services are considered Tier-1 (Production) systems.
Tier 2 - Stage/Test/QA - Internet Facing (Non-Customer)
Systems that host customer staging, test, or QA containers or services or GRAYS AI, INC. -administered services that are directly accessible from the Internet are considered Tier 2 (Confidential) systems. Note that by policy, staging, test, or QA systems are forbidden to store, process, or transmit Tier 1 (Protected) data.
Tier 3 - Development environments/Workstations (Company-managed system)
GRAYS AI, INC. administered systems that host development environments, and GRAYS AI, INC. -purchased workstations (including other mobile computing devices) are considered Tier 3 Dev systems.
Tier 4 - Unsecured (Personal/unmanaged system)
Any computing system that is not purchased or administered by GRAYS AI, INC. is considered a Tier 4 Unsecured system. This includes employee-owned workstations, mobile computing devices, and cloud-based environments and services.

Applicable Standards from the HITRUST Common Security Framework:
* 01.w Sensitive System Isolation
* 06.c Protection of Organizational Records
* 06.d Data Protection and Privacy of Covered Information
* 10.a Security Requirements Analysis and Specification

### Credential Management Policy

Applicable Standards from the HITRUST Common Security Framework:

* 01.b User Registration
* 01.c Privilege Management
* 01.d User Password Management
* 01.q User Identification and Authentication

### Data Integrity Policy

Applicable Standards from the HITRUST Common Security Framework:

* 01.v Information Access Restriction
* 05.i Identification of Risks Related to External Parties
* 09.j Controls Against Malicious Code
* 09.v Electronic Messaging
* 10.h Control of Operational Software

### Data Retention and Media Destruction Policy

Applicable Standards from the HITRUST Common Security Framework:

* 06.c Protection of Organizational Records
* 08.l Secure Disposal or Re-Use of Equipment
* 09.aa Audit Logging
* 09.p Disposal of Media

### Disaster Recovery and Business Continuity Policy

Applicable Standards from the HITRUST Common Security Framework:

* 09.e Service Delivery
* 09.l Back-up
* 09.n Security of Network Services
* 12.b Business Continuity and Risk Assessment
* 12.c Developing and Implementing Continuity Plans Including Information Security
* 12.d Business Continuity Planning Framework



### II. Threat and Vulnerability Assessment**

1. **Threat: Unauthorized Access / Vulnerability: Weak Access Control**

    *Impact Rating*: High
    *Likelihood Rating*: Medium

    Unauthorized access refers to situations where an unauthorized individual gains access to our system. Weak access control mechanisms, such as weak passwords, insufficient multi-factor authentication, or improper access rights, can leave our systems vulnerable to this threat.

2. **Threat: Data Breach / Vulnerability: Insecure Data Transmission**

    *Impact Rating*: High
    *Likelihood Rating*: Medium

    A data breach can occur when sensitive data, such as ePHI, is accessed, disclosed, altered, or deleted without authorization. This can happen if data is transmitted over the network without proper encryption.

3. **Threat: Ransomware Attack / Vulnerability: Outdated Software**

    *Impact Rating*: High
    *Likelihood Rating*: Medium

    Ransomware attacks involve malware that encrypts files on the victim's system, rendering them inaccessible until a ransom is paid. Outdated software can have unpatched vulnerabilities that cybercriminals exploit to execute such attacks.

4. **Threat: Insider Threat / Vulnerability: Lack of User Monitoring and Behavior Analysis**

    *Impact Rating*: Medium
    *Likelihood Rating*: Low

    Insider threats involve harmful actions taken by employees or other individuals with legitimate access to the organization's system. Lack of user monitoring and behavior analysis can make it difficult to detect and prevent such actions.

5. **Threat: Physical Security Breach / Vulnerability: Insufficient Physical Security Controls**

    *Impact Rating*: Medium
    *Likelihood Rating*: Low

    Physical security breaches occur when unauthorized individuals gain physical access to our facilities and IT assets. Insufficient physical security controls, such as lack of surveillance systems or secure access controls, can leave our assets vulnerable to this threat.

6. **Threat: Malware Infection / Vulnerability: Lack of Regular Security Scans and Updates**

    *Impact Rating*: Medium
    *Likelihood Rating*: Medium

    Malware infection can disrupt system operations, compromise sensitive data, or gain unauthorized control of system resources. If regular security scans and updates are not conducted, the system may be left vulnerable to malware infections.

7. **Threat: Social Engineering Attacks / Vulnerability: Lack of Employee Cybersecurity Awareness Training**
    * Impact Rating: High
    * Likelihood Rating: Medium

	Social engineering attacks manipulate individuals into revealing confidential information or performing actions that compromise security. Without proper cybersecurity awareness training, employees may fall prey to these manipulative tactics.

8. **Threat: Denial of Service (DoS) Attacks / Vulnerability: Inadequate Network Protection Measures**
    * Impact Rating: High
    * Likelihood Rating: Low

	DoS attacks overload a network or system, rendering it unavailable to users. If a network lacks sufficient protection measures like firewalls or intrusion prevention systems, it can be vulnerable to these attacks.

9. **Threat: Compromised Third-Party Software / Vulnerability: Inadequate Vendor Security Assessment**
    * Impact Rating: High
    * Likelihood Rating: Medium

	Third-party software can sometimes be compromised, posing a risk to any system it's integrated with. Without thorough vendor security assessments, this threat may go unnoticed.

10. **Threat: Misconfiguration / Vulnerability: Inadequate Configuration Management Practices**
    * Impact Rating: Medium
    * Likelihood Rating: Medium

	Misconfigurations can expose systems and data to unauthorized access. Without effective configuration management practices, these vulnerabilities could remain undetected and unaddressed.

11. **Threat: Lost or Stolen Devices / Vulnerability: Lack of Device Encryption and Remote Wipe Capabilities**
    * Impact Rating: Medium
    * Likelihood Rating: Medium

	Lost or stolen devices can result in unauthorized access to sensitive data. If devices are not encrypted or don't have remote wipe capabilities, they remain vulnerable.

12. **Threat: Insecure APIs / Vulnerability: Lack of Secure Coding Practices**
    * Impact Rating: High
    * Likelihood Rating: Medium

	Insecure APIs can serve as an entry point for attackers to compromise systems and data. Lack of secure coding practices can result in such vulnerabilities.

13. **Threat: Data Leakage / Vulnerability: Inadequate Data Loss Prevention (DLP) Measures**
    * Impact Rating: High
    * Likelihood Rating: Medium

	Data leakage involves the unauthorized transmission of data from within an organization to an external destination. Inadequate DLP measures can leave an organization vulnerable to this kind of threat.

14. **Threat: Legacy Systems / Vulnerability: Unsupported Systems and Software**
    * Impact Rating: Medium
    * Likelihood Rating: Low

	Legacy systems are old methods, technologies, systems, or application software that are not supported by current technology. Unsupported systems and software can have unpatched vulnerabilities, making them a security risk.


15. **Threat: Privilege Escalation / Vulnerability: Poor Privilege Management**
    * Impact Rating: High
    * Likelihood Rating: Medium

	Privilege escalation occurs when a user gains more access rights or privileges than they should have. Poor privilege management, such as unnecessary administrator rights or lack of privilege auditing, can lead to this threat.

16. **Threat: Natural Disasters / Vulnerability: Lack of Disaster Recovery Plan**
    * Impact Rating: High
    * Likelihood Rating: Low

    Natural disasters can cause physical damage to facilities and hardware, resulting in data loss and disruption of operations. Without a proper disaster recovery plan, the organization is at risk of prolonged downtime and loss of critical data.

17. **Threat: Failure to Meet Regulatory Requirements / Vulnerability: Lack of Compliance Monitoring**
    * Impact Rating: High
    * Likelihood Rating: Medium

    Failure to comply with regulatory requirements can result in penalties, loss of reputation, and even legal actions against the organization. Without regular compliance monitoring, the organization may fail to meet these requirements.

18. **Threat: Uncontrolled Asset Use / Vulnerability: Inadequate Asset Tracking**
    * Impact Rating: Medium
    * Likelihood Rating: Medium

    Inadequate asset tracking can lead to unauthorized use of assets, data changes, unauthorized software installation, or even asset theft. The risk becomes more serious if the organization lacks a proper asset management system.

19. **Threat: Toxic Emissions / Vulnerability: Inadequate Environmental Controls**
    * Impact Rating: Medium
    * Likelihood Rating: Low

    Man-made threats such as toxic emissions can harm both the physical health of employees and the environment. If the organization lacks adequate environmental controls, it may fail to prevent or minimize the impact of these threats.

20. **Threat: Infrastructure Failure / Vulnerability: Inadequate Infrastructure Maintenance**
    * Impact Rating: High
    * Likelihood Rating: Medium

    Infrastructure failures such as power outages, water leakages, and unstable building conditions can disrupt operations and cause physical damage. Inadequate infrastructure maintenance can increase the likelihood of these events occurring.

21. **Threat: Unspecified Workforce Security Responsibilities / Vulnerability: Lack of Defined Roles and Responsibilities**
    * Impact Rating: Medium
    * Likelihood Rating: High

    Without clearly defined roles and responsibilities, there is a risk of non-remediated weaknesses and a prolonged duration of addressing security issues. Unclear responsibilities can lead to confusion and poor management of security threats. 



### II. Data Classification and Management Policy

**I. Purpose**

The purpose of this policy is to establish guidelines for the classification, handling, and protection of data based on its sensitivity and importance to the organization.

**II. Scope**

This policy applies to all employees, contractors, volunteers, and any individuals who have access to the organization’s data and information systems.

**III. Definitions**

1. **Sensitive Data**: Data whose unauthorized disclosure may have a serious adverse effect on our organization, clients, or partners.

2. **Internal Use Data**: Data whose unauthorized disclosure may have a moderate adverse effect on our organization, clients, or partners.

3. **Public Use Data**: Data that can be freely disclosed to the public without causing harm or violating privacy laws.

**IV. Data Classification Policy**

Our organization categorizes data into three categories: Sensitive, Internal Use, and Public Use.

1. **Sensitive Data**
    * This includes electronic Protected Health Information (ePHI) stored in our application environment on AWS, and any other data that can be personally identifiable or proprietary to our organization or partners. 
    * Handling of sensitive data should be minimized and limited only to those who need it to fulfill their job responsibilities. 
    * Sensitive data must be protected with strong security controls, including encryption at rest and in transit.

2. **Internal Use Data**
    * This includes internal communications, business operation data, employee data, and any other data that is not intended for public view, but whose unauthorized access or disclosure would cause less damage than Sensitive Data.
    * This data should be accessible only to employees and contractors of our organization and must be protected with appropriate security measures.

3. **Public Use Data**
    * This includes data intended for public distribution, such as marketing materials, publicly available reports, and general contact information.
    * This data requires less restrictive protection measures but should still be handled responsibly to ensure accuracy and integrity.

**V. User Interaction with Sensitive Data**

Our organization’s policies strictly govern user interactions with Sensitive Data:

1. Only authorized users can access sensitive data.
2. Sensitive data should not be transmitted or stored outside of the organization's secure systems without proper security controls.
3. Any suspicion of lost or compromised sensitive data must be reported to the Information Security team immediately.

**VI. Consequences of Lost or Compromised Data**

Failure to comply with these policies can result in severe consequences, including:

1. Disciplinary action, up to and including termination of employment.
2. Legal penalties if the lost or compromised data leads to violations of privacy laws or breach of contractual obligations.

**VII. Enforcement**

All individuals subject to this policy are required to comply with its provisions. Any violations should be reported to the Information Security team for investigation.

---

### III. Risk Acceptance and Software Maintenance Policy

**I. Purpose**

The purpose of this policy is to establish guidelines for the formal acceptance of risks and routine maintenance of servers, applications, and third-party software to address security flaws.

**II. Scope**

This policy applies to all employees, contractors, and any individuals who have responsibilities for managing risks or maintaining software within our organization.

**III. Definitions**

1. **Risk Acceptance**: The decision to tolerate a risk – to take no action to mitigate, transfer or avoid it.

2. **Software Maintenance**: The process of modifying a software product after delivery to correct faults, improve performance or other attributes.

**IV. Risk Acceptance Policy**

1. Risks should only be formally deemed "accepted" when appropriate. This requires comprehensive understanding and documentation of the risk, its potential impact, and the reason for acceptance. 
2. Risk acceptance must be authorized by senior management, after carefully considering the potential consequences and business necessity. 

**V. Software Maintenance Policy**

1. Regular patching of security flaws in servers, applications (including web applications), and third-party software is mandatory. This includes, but is not limited to, operating system patches, security patches, and updates to application functionality.
2. Routine maintenance should be performed at least monthly to implement patches distributed by the vendor community. 
3. If patching is not automatic, IT personnel are responsible for manually installing these patches. Due diligence should be taken to test patches in a controlled environment before applying them to live systems to minimize the risk of system instability.
4. Documentation of all performed software maintenance should be maintained for auditing and troubleshooting purposes.

**VI. Consequences of Policy Violation**

Failure to comply with these policies can result in severe consequences, including:

1. Disciplinary action, up to and including termination of employment.
2. Legal penalties if the failure to properly accept risks or maintain software leads to security breaches or violations of contractual obligations.

**VII. Enforcement**

All individuals subject to this policy are required to comply with its provisions. Any violations should be reported to the Information Security team for investigation.

### IV. Employee Policies


* The CEO, Jonah Kaye, is specifically responsible to respond to and mitigate threats and vulnerabilities found in the SRA. 
* SRA results are communicated to personnel involved in responding to threats or vulnerabilities via written and verbal communication 
* 
